
# Fetch Web Pages

Nonfunctional requirements that are most likely to be present but skipped here.

* Test cases.
* Authentication if required.
* Proper frontend framework.

## Instructions to use

Install [docker](https://docs.docker.com/engine/install)

clone the repository
```sh
git clone https://github.com/eng-awais/cli-web-pages.git
```
Go to project folder
```sh
cd cli-web-pages
```
Build and Run application
```sh
docker-compose up
```
Fetch web pages with the following command
```sh
docker-compose run —rm fetch /app/fetch https://autify.com`
```
```sh
docker-compose run —rm fetch /app/fetch https://www.google.com`
```
