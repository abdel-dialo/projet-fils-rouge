ARG VERSION="3.6-alpine"
FROM python:$VERSION
ARG ODOO_URL
ENV ODOO_URL=$ODOO_URL
ARG PGADMIN_URL
ENV PGADMIN_URL=$PGADMIN_URL
EXPOSE 8080
WORKDIR /opt
ADD  ./static   /opt
ADD ./templates  /opt
ADD ./app.py /opt
RUN pip install Flask
CMD ["sh", "-c", "python app.py $ODOO_URL $PGADMIN_URL"]
