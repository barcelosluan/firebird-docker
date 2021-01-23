# How to use:

Just execute ```build.sh {image_and_container_name}``` passing a parameter for the image and container name, and it will do everything you need.

Exemple: ```./build.sh my-name```

* Important folders:
	* data: to store your db
	* etc: fb configs

Optional: If you need to use the password elsewhere, use the printed one at the first line

# Steps to standalone build:

1. Clone the repository:

```shell
git clone https://github.com/barcelosluan/firebird-docker.git
```

2. Acess its folder:

```shell
cd firebird-docker
```

3. Checkout to barcelosluan/2.5-ss branch:

```shell
git checkout barcelosluan/2.5-ss
```

4. Build the image (and get some tea):

```shell
docker build -t firebird:2.5-ss .
```

5.Run the built image into a new container:

```shell
docker run -d \
    --name firebird \
    -p 3050:3050 \
    -v ~/firebird/volume/:/firebird/ \
    firebird:2.5-ss
```

* Optional: If you want to set a specific user, password or database, use the following parameters at docker run:
	* -e FIREBIRD_USER=SYSDBA
	* -e FIREBIRD_PASSWORD=masterkey
	* -e FIREBIRD_DATABASE=database.fdb

6. If you do not set a specific password it will generate a random one. To check it:

```shell
docker logs firebird
```

7. Acess in interactive mode the container:

```shell
docker exec -it firebird /bin/bash
```

8. Stop and remove the container:

```shell
docker stop firebird
docker rm firebird
```

9. Remove the image:

```shell
docker image rm firebird:2.5-ss
```
