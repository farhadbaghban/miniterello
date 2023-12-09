FROM python:latest

COPY ./src /src
COPY ./requirments /requirments

WORKDIR /src

EXPOSE 8000

RUN python -m venv /py 
RUN /py/bin/pip install --upgrade pip


RUN /py/bin/pip install -r /requirments/development.txt    

ENV PATH="/py/bin:$PATH"