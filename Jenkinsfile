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
        bat '.\\\\Scripts\\\\Build.bat'
        archiveArtifacts '*Report_*.xml'
        archiveArtifacts 'builds/**'
      }
    }

    stage('Notify') {
      steps {
        mail(subject: 'Test Mail Jenkins', body: 'Build succeded', from: 'jlinisa@linsys-technologies.fr', to: 'jlinisa@linsys-technologies.fr')
      }
    }

  }
  
  post {
        always {
            // Étape exécutée après chaque build, qu'il soit réussi, échoué ou instable
            mail(subject: 'Test Mail Jenkins', body: 'Build terminé', from: 'jlinisa@linsys-technologies.fr', to: 'jlinisa@linsys-technologies.fr')
        }
    }
}