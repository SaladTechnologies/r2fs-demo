# S3FS w/ R2: Model Serving Example

> This **WILL NOT WORK** on Salad. This method requires running containers in a privileged mode, which is not allowed on Salad.

This is an example of how to mount an R2 bucket as a filesystem inside a docker container. For this example, we use SDNext to provide inference with a dreamshaper stable diffusion checkpoint served from R2.