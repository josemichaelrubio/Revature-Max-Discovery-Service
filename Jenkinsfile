pipeline {
   agent any

    environment {
        PORT="8500"
        IMAGE_TAG="revmax-discovery"
        CONTAINER_NAME="revmax-discovery"
    }

   stages {
      stage('checkout'){
          steps {
            git branch: 'master', url: 'https://gitlab.com/210301-java-azure/project3/revature-max-discovery-service.git'
          }
      }
        stage('remove previous container if exists') {
            steps {
                sh 'docker stop ${CONTAINER_NAME} || true'
            }
        }
        stage('create container') {
            steps {
                sh 'docker run -d --rm -p ${PORT}:${PORT} --name ${CONTAINER_NAME} ${IMAGE_TAG}'
            }
        }
    }
}
