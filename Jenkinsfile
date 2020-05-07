node {
  def app
  //agent any
    stage('Clean') {
      steps {
        sh 'mvn clean'
      }
    }
    stage('Compile') {
      steps {
        sh 'mvn compile'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }
      stage('Clone Repository') {
        checkout scm
    }
      stage('Build Image') {
        app = docker.build("ankitpd/calculator")
      }
    stage('Push image')
      {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            //app.push("latest")
        }
      }
}
