pipeline {
    agent any
    
    tools{
        jdk 'jdk17'
    }

    stages {
        stage('git checkout') {
            steps {
                git 'https://github.com/veerababu5/mywebsitedesign1.git'
            }
        }
        
        stage('docker build') {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'docker-cred') {
                    
                    sh "docker build -t test ."
                    sh "docker tag test veeru3488/test:latest "
                    }
               }
            }
        }
        
        stage('docker push') {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'docker-cred') {
                    
                    sh "docker push veeru3488/test:latest "
                    }
               }
            }
        }
        
        stage('docker deploy') {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'docker-cred') {
                    
                    sh "docker rm -f jai"
                    sh "docker run -d --name jai -p 8090:80 test:latest "
                    }
               }
            }
        }
    }
}

