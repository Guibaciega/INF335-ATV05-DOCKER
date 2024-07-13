pipeline {
  agent { label 'linux' }

  stages {
    stage('build') {
      steps {
        script {
          sh '''
            docker build -t ola_unicamp .
          '''
        }
      }
    }

    stage('run') {
      steps {
        script {
          sh '''
            docker run --rm ola_unicamp
          '''
        }
      }
    }
  }
}
