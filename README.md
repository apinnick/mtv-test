# Forklift

Forklift is the upstream project for Migration Toolkit for Virtualization.

## Contributing

You can test the changes to this repository by running a Jekyll container.

### Running a Jekyll container

- Clone repository, check out the source branch, and prepare the Jekyll site:

  ```console
  git clone -b source https://github.com/apinnick/mtv-test.git && cd mtv-test
  for i in .jekyll-cache _site; do mkdir ${i} && chmod 777 ${i}; done
  for i in Gemfile.lock; do touch ${i} && chmod 777 ${i}; done
  ```

- On a SELinux enabled OS:

  ```console
  podman run -it --rm --name jekyll -p 4000:4000 -v $(pwd):/srv/jekyll:Z jekyll/jekyll jekyll serve --watch --future
  ```

  **NOTE**: The Z at the end of the volume (-v) will relabel its contents so that it can be written from within the container, like running `chcon -Rt svirt_sandbox_file_t -l s0:c1,c2` yourself. Be sure that you have changed your present working directory to the git cloned directory as shown above.

- On an OS without SELinux:

  ```console
  podman run -it --rm --name jekyll -p 4000:4000 -v $(pwd):/srv/jekyll jekyll/jekyll jekyll serve --watch --future
  ```

### View the site

Visit `http://0.0.0.0:4000` in your local browser.
