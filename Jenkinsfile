pipeline {
  agent { label "linux" }
  stages {
    stage("build") {
      steps {
        script {
          docker.build("ola_unicamp", "-f Dockerfile .")
        }
      }
    }
    stage("run") {
      steps {
        script {
          docker.image("ola_unicamp").withRun('-it --rm', 'java OlaUnicamp')
        }
      }
    }
  }
}

        sh """
          docker run --rm ola_unicamp
        """
      }
    }
  }
}
