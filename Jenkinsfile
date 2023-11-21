pipeline{
    agent any
    tools{
        nodejs "node"
    }
    stages{
         stage("install dependancies"){
            steps{
                sh "npm install"
            }
        }
        stage("tests"){
                    steps{
                        sh "npm test"
                    }
                }
        }
}