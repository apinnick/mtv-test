# Forklift

Forklift is the upstream project for Migration Toolkit for Virtualization.

## Contributing

Read the [Guidelines for Red Hat Documentation](https://redhat-documentation.github.io/) before opening a Pull Request.

### Upstream and downstream variables

Use the following variables:

| Variable           | Upstream value                 | Downstream value                     |
| --------           | --------------                 | ----------------                     |
| project-short | Forklift | MTV |
| project-full | Forklift   | Migration{nbsp}Toolkit{nbsp}for{nbsp}Virtualization |
| project-version | 2.0 | 2.0 |
| virt     | KubeVirt | OpenShift Virtualization |
| ocp          | OpenShift{nbsp}Kubernetes{nbsp}Engine | Red{nbsp}Hat{nbsp}OpenShift{nbsp}Container{nbsp}Platform |
| ocp-version   | 4.6 | 4.6 |
| ocp-short | OKE | OCP |

Variables cannot be used in shell or code examples unless you include the "attributes" keyword:

	[options="nowrap" subs="+quotes,+attributes"]
	----
	# ls {VariableName}
	----

Hide or show specific blocks, paragraphs, warnings or chapters via special variable called "build". Its value can be set either to "downstream" or "upstream":

	ifeval::["{build}" == "upstream"]
	This content is only relevant for Forklift.
	endif::[]

### Previewing changes in a container

You can preview the changes to this repository by running a Jekyll container.

- Clone repository, check out the source branch, and prepare the Jekyll site:

  ```console
  git clone -b source https://github.com/apinnick/mtv-test.git && cd mtv-test
  for i in .jekyll-cache _site; do mkdir ${i} && chmod 777 ${i}; done
  for i in Gemfile.lock; do touch ${i} && chmod 777 ${i}; done
  ```

- On am SELinux-enabled OS:

  ```console
  podman run -it --rm --name jekyll -p 4000:4000 -v $(pwd):/srv/jekyll:Z jekyll/jekyll jekyll serve --watch --future
  ```

  **NOTE**: The Z at the end of the volume (-v) will relabel its contents so that it can be written from within the container, like running `chcon -Rt svirt_sandbox_file_t -l s0:c1,c2` yourself. Be sure that you have changed your present working directory to the git cloned directory as shown above.

- On an OS without SELinux:

  ```console
  podman run -it --rm --name jekyll -p 4000:4000 -v $(pwd):/srv/jekyll jekyll/jekyll jekyll serve --watch --future
  ```

- To view the site, navigate to `http://0.0.0.0:4000` in a web browser.
