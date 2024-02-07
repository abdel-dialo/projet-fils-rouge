ARG VERSION="3.6-alpine"
FROM python:$VERSION
ARG ODOO_URL=https://www.odoo.com
ARG PGADMIN_URL=https://www.pgadmin.org
EXPOSE 8080
WORKDIR /opt
ADD  ./static   /opt
ADD ./templates  /opt
ADD ./app.py /opt
RUN pip install Flask
CMD python ./app.py $ODOO_URL $PGADMIN_URL
