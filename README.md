# Openshift command line tool for interacting with Openshift 3

# Summary

- A Docker build for the oc command line tool, used to control Openshift. For more info, see [Get Started with the CLI](https://docs.openshift.com/dedicated/getting_started/index.html)

# Requirements

- Docker :whale: - if you are on Windows or Mac, checkout
  the [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
  

# To build the Docker image

- Build the image using docker
```bash
$ ./build.sh
```
- Run the container and start bash
```bash
$ ./run.sh
```
- Optionally add an alias to your local profile so you can run the container as a cli (you may also want to mount kube config or pass env vars...)
```bash
$ alias oc='docker run --rm -ti openshift-oc-redhat oc'
$ oc version
```

### Contributing
File issues in GitHub to report bugs or issue a pull request to contribute.
