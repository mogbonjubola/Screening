pipeline{
    agent any
    tools {nodejs "Node"}
    stages {
        stage('Clone Repository'){
            steps{
                git branch: 'Mogbonjubola',
                    url: 'https://github.com/mogbonjubola/Screening.git'
            }
        }
        stage('Install Dependencies'){
            steps {
                bat 'yarn install'
            }
        }
        stage('Typescript Compilation'){
            steps{
                 yarn run prettier-check
            }     
        }
        stage('formatting'){
            steps{
                yarn run prettier-format
            }

        }   
        stage('testing'){
            step{
                yarn run test
            } 
        } 
    },    