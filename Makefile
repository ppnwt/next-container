start-dev:
	npm run dev

build:
	npm run build

docker-build:
	docker build -t next-container .

start:
	docker rm -f next-app
	docker run -p 3001:3000 -t -d --name next-app next-container

clean:
	docker system prune