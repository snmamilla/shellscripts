pipeline {
    agent any
    stages {
        stage('submit stack') {
            steps {
                sh "aws cloudformation create-stack --stack-name ec2demo  --template-body file://simple.json --region 'us-east-2'"
            }
        }
    }    
}
