FROM newtmitch/sonar-scanner:3.0.3-alpine
RUN apt-get install -y
FROM node:9

# Use bash if you want to run the environment from inside the shell, otherwise use the command that actually runs the underlying stuff
#CMD /bin/bash
CMD sonar-scanner -Dsonar.projectBaseDir=./src