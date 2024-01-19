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

  }
  
  post {
        always {
            // Étape exécutée après chaque build, qu'il soit réussi, échoué ou instable
            emailext subject: 'Sujet du mail de notification',
                      body: 'Build terminé. Veuillez consulter les résultats.',
                      to: 'jlinisa@linsys-technologies.fr',
                      from: 'jean.linisa@gmail.com',
                      cc: '',
                      bcc: '',
                      replyTo: '',
                      mimeType: 'text/html',
                      attachLog: true,
                      compressLog: true
        }
    }
}