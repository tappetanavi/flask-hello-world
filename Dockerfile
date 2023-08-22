FROM python:3-alpine3.10
LABEL author=Ijya
EXPOSE 5000
ADD  . /flask-hello-world 
RUN  cd flask-hello-world && \
    pip3 install flask
WORKDIR /flask-hello-world    
CMD ["flask", "run", "-h", "0.0.0.0"]    
