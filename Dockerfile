FROM python:3

RUN mkdir /app

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

EXPOSE 5000

CMD ["python","final_server.py"]
