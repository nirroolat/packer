pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git(url: 'git@github.com:nirroolat/packer.git', branch: 'master')
      }
    }
    stage('CreateAMI ') {
      parallel {
        stage('CreateAMI ') {
          steps {
            sh '''cd $WORKSPACE/centos_base
/usr/local/bin/packer build centos.json'''
          }
        }
        stage('Parallel_Ami_Build') {
          steps {
            sh '''cd $WORKSPACE/centos_base
/usr/local/bin/packer build centos.json'''
          }
        }
      }
    }
    stage('CreateAnotherAmi ') {
      steps {
        sh '''cd $WORKSPACE/centos_base
/usr/local/bin/packer build centos.json'''
      }
    }
  }
}