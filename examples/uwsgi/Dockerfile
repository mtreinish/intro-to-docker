FROM python:3.6

RUN apt-get update
RUN apt-get install -y build-essential musl-dev libxml2-dev git
RUN pip3 install -U pymysql
RUN pip3 install -U uwsgi
RUN git clone git://git.openstack.org/openstack/openstack-health
RUN pip3 install -U ./openstack-health

RUN cp openstack-health/etc/openstack-health-api.conf /etc/openstack-health.conf

EXPOSE 80

CMD ["/usr/local/bin/uwsgi", "--http", ":80", "--wsgi-file", "/usr/local/bin/openstack-health"]

