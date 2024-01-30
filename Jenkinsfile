pipeline {
  agent any
  stages {
    stage('Run App') {
      steps {
        bat '.\\\\Scripts\\\\RunApp.bat'
        archiveArtifacts 'Test_Report.txt'
      }
    }

    stage('Unit Test') {
      steps {
        bat '.\\\\Scripts\\\\UnitTest.bat'
        junit '*Report_*.xml'
        archiveArtifacts '*Report_*.xml'
      }
    }

    stage('Build') {
      steps {
        bat '.\\\\Scripts\\\\Build.bat'
        archiveArtifacts 'builds/**'
      }
    }

  }
  post {
    always {
      //mail(subject: 'Test Mail Jenkins', body: 'Build finished', from: 'jean.linisa@gmail.com', to: 'jean.linisa.ext@asn.com')
    }

  }
}