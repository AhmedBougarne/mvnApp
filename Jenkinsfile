pipeline {
   environment {
      registry = "dockerhub13/atelier6"
      registryCredential = 'ahmed_dockerhub'
      dockerImage = ''
  }
  agent any
  stages {
      stage('Build') {
          steps {
             sh 'clean install package'
          }
      }
     stage('Building image') {
          steps{
             script {
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
             }
          }
     }
     stage('Deploy Image') {
          steps{
             script {
                  docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                  }
             }
          }
     }
  }
}
