FROM python:stretch
RUN mkdir /myapp
COPY main.py /myapp
COPY requirements.txt /myapp
WORKDIR /myapp
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]