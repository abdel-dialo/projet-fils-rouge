ARG VERSION="3.6-alpine"
FROM python:$VERSION
ENV ODOO_URL="https://odoo.com"
ENV PGADMIN_URL="https://pgadmin.org"
WORKDIR /opt
ADD  ./ /opt
RUN pip install -r ./requirements.txt
EXPOSE 8080
CMD ["python", "app.py"]
