pipeline {
  agent any
  stages {
    stage('Unit Test') {
      steps {
        lvRunVi(lvBuildViPath: 'C:\\Users\\yannd\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\et_Plugin_LabVIEW_Working_Branch\\Jenkins\\Jenkins Unit Test.vi', lvBuildName: 'LabVIEW2021_32b', lvBuildAdditionalParams: 'None', lvBreakNotBuild: true)
        junit '*Report_*.xml'
      }
    }

    stage('Build') {
      steps {
        lvExecuteBuildStep(lvBuildName: 'Add_Application', lvProjectPath: 'Test Pipeline Jenkins.lvproj', lvBuildTarget: 'Poste de travail')
        archiveArtifacts '*Report_*.xml'
        archiveArtifacts 'builds/**'
      }
    }

  }
}