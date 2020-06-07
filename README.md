# skyOS Webhook Listener

This container hosts a [webhook](https://github.com/adnanh/webhook) listener
that triggers a script to redeploy the skyOS Docker environment on GitHub package
releases.

This a customized build based on the work of [docker-webook](https://github.com/almir/docker-webhook).

## Configuration

1) Replace `mysecret` in [hooks.json](hooks.json) with an appropriate 
Github webhook secret.

2) Configure the appropriate credentials for the Github Docker registry in
[docker-compose.yml](docker-compose.yml):
    ```
    DOCKER_USERNAME: <registry user>
    DOCKER_PASSWORD: <registry password/token>
    ```

3) Ensure the proper path to the app is mounted in
[docker-compose.yml](docker-compose.yml):
    ```
    - /path/to/app:/app
    ```

## Usage

Start the docker container and ensure requests are routed appropriately.
