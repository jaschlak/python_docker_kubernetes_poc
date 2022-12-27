# start by pulling the python image
FROM python:3.9.1

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt
COPY ./app/* /app/
#COPY ./main.py /app/./main.py

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

EXPOSE 8000

# configure the container to run in an executed manner (python dev)
ENTRYPOINT [ "python" ]
CMD ["main.py"]