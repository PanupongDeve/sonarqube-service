
DIR=.

cat << EOF > $DIR/docker-compose.yaml
version: "3.8"
services: 
  sonarqube:
    container_name: sonarqube
    image: 'sonarqube:lts'
    volumes:
        - "$DIR/sonarqube-volumes/sonarqube_data:/opt/sonarqube/data"
        - "$DIR/sonarqube-volumes/sonarqube_logs:/opt/sonarqube/logs"
        - "$DIR/sonarqube-volumes/sonarqube_extensions:/opt/sonarqube/extensions"
    user: "1000:1000"
    ports:
      - 9000:9000
    networks:
      - private_network
    restart: always
networks:
    private_network:
      name: private_network
EOF