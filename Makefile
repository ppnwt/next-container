start-dev:
	npm run dev

build-next:
	npm run build

clean:
	./mvnw clean install

build:
	docker build -t next-container .
	make start
	docker logs next-app

start:
	docker run -p 3001:3000 -t -d --name next-app next-container