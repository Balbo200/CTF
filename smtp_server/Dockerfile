FROM ubuntu:24.04

#Installation des mis à jour ainsi que des packets postfix

RUN apt-get update
RUN apt-get install -y postfix


# Copie de nos différents executable au sein du container 
COPY main.cf /etc/postfix/main.cf
COPY Injection.sh /usr/local/bin
# Permet de rendre le fichier Injection executable
RUN chmod +x /usr/local/bin/Injection.sh

# Exécution du fichier 
RUN bash /usr/local/bin/Injection.sh

#Exposition du port smtp
EXPOSE 25
#Execution de postfix
CMD ["postfix", "start-fg"]
