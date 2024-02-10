ARG VERSION="3.6-alpine"
FROM python:$VERSION
ENV ODOO_URL="https://www.odoo.com"
ENV PGADMIN_URL="https://www.pgadmin.org" 
ADD  ./* /opt
WORKDIR /opt
RUN pip install -r ./requirements.txt
EXPOSE 8080
CMD ["python", "app.py"]
