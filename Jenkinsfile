pipeline {
  agent { label 'linux' }
  stages {
    stage('build') {
      steps {
        script {
          docker.build('ola_unicamp', '-f Dockerfile .')
        }
      }
    }
    stage('run') {
      steps {
        script {
          docker.image('ola_unicamp').inside('-it --rm') {
            sh 'java OlaUnicamp'
          }
        }
      }
    }
  }
}
