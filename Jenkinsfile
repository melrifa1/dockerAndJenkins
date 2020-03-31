node {
    def app

    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */

        checkout scm
    }

    stage('export edb creds'){
        withCredentials([usernamePassword(credentialsId: 'ad', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            sh "export edb_user=${USERNAME}"
            sh "export edb_pass=${PASSWORD}"
        }
    }

    stage('Build image') {
        /* This builds the actual image */

        app = docker.build("mo1")
    }

}
