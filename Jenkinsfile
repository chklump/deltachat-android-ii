pipeline {
  agent {
    docker {
      image 'deltachat/debian-stretch-android'
      alwaysPull true
    }
  }
  stages {
    stage('Build') {
      steps {
        sh './ci-build.sh'
      }
    }
  }
}