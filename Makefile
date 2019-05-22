docker: 
	docker build -t mxiao-site -f Dockerfile .
website:
	docker run -i -t -d -p 80:80 mxiao-site

deploy: docker
	docker run -i -t -d -p 80:80 mxiao-site

interactive: docker
	docker run -it -v $(PWD):/usr/share/nginx/html -p 80:80 mxiao-site 

clean:
	docker rmi -f mxiao-site
