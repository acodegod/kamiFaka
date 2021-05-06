FROM python:3.8-slim
LABEL 维护者="佰阅 2894049053@qq.com"

# 备选数据库Sqlite \Mysql \ PostgreSQL
ENV DB_TYPE='Mysql'
ENV DB_HOST='den1.mysql4.gear.host'  
ENV DB_PORT='3306'  
ENV DB_USER='bugjavaimg'  
ENV DB_PASSWORD='2377743797lyh...'  
ENV DB_DATABASE='bugjavaimg'  

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x docker-entrypoint.sh

EXPOSE 8000

ENTRYPOINT [ "/usr/src/app/docker-entrypoint.sh" ]

# ENTRYPOINT ["gunicorn","-k", "gevent", "--bind", "0.0.0.0:8000", "--workers", "8", "app:app"]


