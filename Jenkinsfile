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
             sh 'docker build -t dockerhub1729/atelier_GL:latest .'
          }
     }
     stage('Deploy Image') {
          steps{
             sh 'docker push dockerhub1729/atelier_GL:latest'
          }
     }
  }
}
