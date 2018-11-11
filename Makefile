docker: 
	docker build -t mxiao-site -f dev/Dockerfile .
deploy:
	docker run -i -t -p 80:80 mxiao-site
