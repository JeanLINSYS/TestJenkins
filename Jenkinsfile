pipeline {
  agent any
  stages {
    stage('Unit Test') {
      steps {
        bat '.\\\\Scripts\\\\UnitTest.bat'
        junit '*.xml'
      }
    }

    stage('Build') {
      steps {
        lvExecuteBuildStep(lvBuildName: 'Add_Application', lvProjectPath: 'Test Pipeline Jenkins.lvproj', lvBuildTarget: 'Poste de travail')
      }
    }

  }
}