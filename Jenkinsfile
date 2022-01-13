pipeline {
   environment {
      registry = "dockerhub1729/atelierGL"
      registryCredential = 'dockerhub1729'
      dockerImage = ''
  }
  agent any
  stages {
      stage('Build') {
          steps {
             sh 'mvn clean install package'
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
