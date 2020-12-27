# Forklift

Forklift is the upstream project for Migration Toolkit for Virtualization.

## Contributing

Read the [Guidelines for Red Hat Documentation](https://redhat-documentation.github.io/) before opening a pull request.

### Upstream and downstream variables

Use the following variables:

| Variable           | Upstream value                 | Downstream value                     |
| --------           | --------------                 | ----------------                     |
| project-full | Forklift   | Migration Toolkit for Virtualization |
| project-short | Forklift | MTV |
| project-version | 2.0 | 2.0 |
| virt | KubeVirt | OpenShift Virtualization |
| ocp | OpenShift Kubernetes Engine | Red Hat OpenShift Container Platform |
| ocp-version   | 4.6 | 4.6 |
| ocp-short | OKE | OCP |

Variables cannot be used in shell or code examples unless you include the "attributes" keyword:

	----
	# ls {VariableName}
	----

You can hide or show specific blocks, paragraphs, warnings or chapters with the `build` variable. Its value can be set to "downstream" or "upstream":

	ifeval::["{build}" == "upstream"]
	This content is only relevant for Forklift.
	endif::[]

### Previewing changes

You can create a local HTML build to view changes.

1. In the `/root` directory, create an HTML build:
    ```console
    $ make
    ```
    The HTML build is created in a `/build` directory.

2. Open `/build/mtv/index-upstream.html` in a web browser.
