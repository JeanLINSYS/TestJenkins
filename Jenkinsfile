pipeline {
  agent any
  stages {
    stage('Unit Test') {
      steps {
        lvRunVi(lvBuildViPath: 'C:\\Users\\yannd\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\TestJenkins_Working_Branch\\Jenkins\\Jenkins Unit Test.vi', lvBuildName: 'LabVIEW2021_32b', lvBuildAdditionalParams: 'None', lvBreakNotBuild: true)
        junit '*.xml'
      }
    }

    stage('Build') {
      steps {
        lvExecuteBuildStep(lvBuildName: 'Add_Application', lvProjectPath: 'Test Pipeline Jenkins.lvproj', lvBuildTarget: 'Poste de travail')
        archiveArtifacts '**/*'
      }
    }

  }
}