pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://your-git-repo-url/hello-world-java.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Run') {
            steps {
                sh 'java -cp target/hello-world-java-1.0-SNAPSHOT.jar com.demo.HelloWorld'
            }
        }
    }
}
