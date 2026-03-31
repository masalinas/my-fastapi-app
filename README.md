
## Scaffolding

From scratach

## Start service
```bash
$ uvicorn app.main:app --reload
```

## Build docker image
```bash
$ docker build -t my-fastapi-app .
```

## Run docker container
```bash
$ docker run --name my-fastapi-app --rm -p 8080:80 my-fastapi-app
```