ARG VERSION="3.6-alpine"
FROM python:$VERSION
ENV ODOO_URL
ENV PGADMIN_URL
EXPOSE 8080
WORKDIR /opt
ADD  ./static   /opt
ADD ./templates  /opt
ADD ./app.py /opt
RUN pip install Flask
ENTRYPOINT ["/opt", "python", "app.py"]
