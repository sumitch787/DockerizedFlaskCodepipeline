FROM ubuntu

RUN  apt update &&  apt-get install -y \
     python3 \
     python3-pip 

COPY ./requirement.txt /app/requirement.txt

WORKDIR /app

RUN pip3 install --no-cache-dir -r requirement.txt 

COPY . .

EXPOSE 5000

CMD ["python3","app.py"]  

