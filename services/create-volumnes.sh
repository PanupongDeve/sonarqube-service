
VOLUMES_DIR=.

mkdir -p $VOLUMES_DIR/sonarqube-volumes

mkdir -p $VOLUMES_DIR/sonarqube-volumes/sonarqube_data
mkdir -p $VOLUMES_DIR/sonarqube-volumes/sonarqube_logs
mkdir -p $VOLUMES_DIR/sonarqube-volumes/sonarqube_conf
mkdir -p $VOLUMES_DIR/sonarqube-volumes/sonarqube_extensions

chmod 777 -R $VOLUMES_DIR/sonarqube-volumes
chown -R 1000:1000 $VOLUMES_DIR/sonarqube-volumes