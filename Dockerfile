FROM postgres:11
RUN apt-get update && apt-get install -y build-essential python3 python3-pip python3-setuptools python3-dev postgresql-plpython-11 postgresql-server-dev-11 postgresql-11-python3-multicorn
RUN pip3 install pgxnclient
RUN pgxn install neo4j-fdw
