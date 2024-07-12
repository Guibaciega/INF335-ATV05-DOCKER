pipeline {
  agent { label "linux" }
  stages {
    stage("build") {
      steps {
        sh """
          docker build -t ola_unicamp .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run --rm ola_unicamp
        """
      }
    }
  }
}
