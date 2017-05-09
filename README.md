# ED2 singularity image

To build the image, run `./build.sh`.
See this file for the structure of the commands.

The resulting file, `ed2.img` is an executable, which can be executed just like a normal ED executable, with `./ed2.img -f /path/to/ED2IN`.
Note that the ED2IN file, and all assocated inputs, live on the host file system, _not_ inside the image -- the image is just a fully self-contained executable.
