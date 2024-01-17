pipeline {
  agent any
  stages {
    stage('Unit Test') {
      steps {
        bat '.\\\\Scripts\\\\UnitTest.bat'
        junit '*Report_*.xml'
      }
    }

    stage('Build') {
      steps {
        archiveArtifacts '*Report_*.xml'
        archiveArtifacts 'builds/**'
        bat '.\\\\Scripts\\\\Build.bat'
      }
    }

  }
}