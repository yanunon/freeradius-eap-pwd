FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:freeradius/stable-3.0 && apt-get update -y
RUN apt-get install -y freeradius
RUN mv /etc/freeradius/mods-enabled/eap /etc/freeradius/mods-enabled/eap.bak &&\
	sed 's/#\tpwd {/pwd{\nserver_id=id@test.com\n}\n#\tpwd {/g' /etc/freeradius/mods-enabled/eap.bak > /etc/freeradius/mods-enabled/eap &&\
	 rm /etc/freeradius/mods-enabled/eap.bak

ADD run_freeradius.sh /usr/bin/
RUN chmod +x /usr/bin/run_freeradius.sh
