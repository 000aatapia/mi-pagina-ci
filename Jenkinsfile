pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("mi-pagina:latest")
                }
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker rm -f mi-pagina || true'
                sh 'docker run -d -p 8080:80 --name mi-pagina mi-pagina:latest'
            }
        }
    }
}
