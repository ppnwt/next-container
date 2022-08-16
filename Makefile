start-dev:
	npm run dev

build:
	npm run build

docker-build:
	docker build -t next-container .
	make start
	docker logs next-app

start:
	docker stop next-app
	docker system prune
	docker run -p 3001:3000 -t -d --name next-app next-container

clean:
	docker system prune -f