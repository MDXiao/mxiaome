docker: 
	docker build -t mxiao-site -f Dockerfile .
deploy:
	docker run -i -t -d -p 80:80 mxiao-site
clean:
	docker rmi -f mxiao-site
