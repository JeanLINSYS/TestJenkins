pipeline {
  agent any
  stages {
    stage('Unit Test') {
      steps {
        lvRunVi(lvBreakNotBuild: true, lvBuildViPath: 'C:\\Users\\yannd\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\_Plugin_LabVIEW_Working_Branch_2\\Jenkins\\Jenkins Unit Test.vi', lvBuildName: 'LabVIEW2021_32b')
        archiveArtifacts '*Report_*.xml'
      }
    }

    stage('Build') {
      steps {
        bat '.\\\\Scripts\\\\Build.bat'
        archiveArtifacts '*Report_*.xml,builds/**'
      }
    }

  }
}