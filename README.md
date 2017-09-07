# Nagios Remote Plugin Executor (NRPE)

Resources to create a Docker image of the Nagios [NRPE](https://exchange.nagios.org/directory/Addons/Monitoring-Agents/NRPE--2D-Nagios-Remote-Plugin-Executor/details) used for [monitoring the Labs workbench infrastructure](https://opensource.ncsa.illinois.edu/confluence/display/NDS/NDS+Labs+Monitoring).

Building image local:  

docker build -t nrpe:latest .

Tag the image:

 docker tag nrpe:latest dharamaraob/nrpe:latest

Push to Docker hub:

docker push dharamaraob/nrpe

Running in a Remote Host machine:

docker run -d --name nrpe-server -p 5666:5666 -e "NAGIOS_SERVER=10.0.5.161" dharamaraob/nrpe:latest

Note: Need to change your nagios ip address in nrpe.cfg @ allowedhosts.
