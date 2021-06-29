# syntax=docker/dockerfile:1

FROM python:3.7-slim

RUN mkdir src

WORKDIR /src

RUN pip3 install jupyter

#COPY . .

CMD ["python3", "-m", "jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]