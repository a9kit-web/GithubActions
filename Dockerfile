FROM python:3.9.6
ENV HOSTNAME=db
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
RUN chmod a+x /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]
