# init a base image  #79MB
FROM python:3.8.7-alpine
#FROM python:3.8.7 #920 MB

#RUN apk add --no-cache python3-dev \
#    && pip3 install --upgrade pip

#define the present working directory
WORKDIR /vanillaflaskapp3

#copy the contents into the working dir
ADD . /vanillaflaskapp3

#update pip
RUN pip install --no-cache --upgrade pip

#run pip to install the dependencies of the flask app
RUN pip install --no-cache -r requirements.txt

ENTRYPOINT ["python"]
# define the command to start the container
CMD ["run.py"]