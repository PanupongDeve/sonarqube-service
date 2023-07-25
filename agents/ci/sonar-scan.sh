# ./gradlew sonar -h
# --no-scan 
#   ./gradlew sonar --debug --stacktrace \
#   -Dsonar.projectKey=amado_amado-backend_AYmMOOhjvPZfRVJGsbuG \
#   -Dsonar.host.url=http://192.168.90.3:9000 \
#   -Dsonar.login=sqp_b5932a6408892304d47dbdc020140bd5581abd0e


unzip sonar-scanner-cli.zip  && mv sonar-*-linux sonar-scanner-cli

SONAR_SCANER_DIR=./sonar-scanner-cli
SONAR_SOURCES=.
SONAR_HOST_URL=http://192.168.90.3:9000
SONAR_PROJECT_KEY=amado_amado-backend_AYmMfYjPWdLXXZCrlU7z
SONAR_LOGIN=sqp_64f79251f7b7eba046ea45b120e1ac559f30f570

chmod +x $SONAR_SCANER_DIR/bin/sonar-scanner



$SONAR_SCANER_DIR/bin/sonar-scanner \
  -Dsonar.projectKey=$SONAR_PROJECT_KEY \
  -Dsonar.sources=$SONAR_SOURCES \
  -Dsonar.host.url=$SONAR_HOST_URL \
  -Dsonar.login=$SONAR_LOGIN