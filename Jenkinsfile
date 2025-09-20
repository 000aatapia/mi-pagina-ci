pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Construyendo imagen Docker...'
                sh 'docker build -t mi-pagina:latest .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Desplegando contenedor...'
                // primero paramos si existe
                sh 'docker stop mi-pagina || true && docker rm mi-pagina || true'
                // luego levantamos en 8081
                sh 'docker run -d -p 8081:80 --name mi-pagina mi-pagina:latest'
            }
        }
    }
}
