pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git(url: 'git@github.com:nirroolat/packer.git', branch: 'master')
      }
    }
    stage('CreateAMI') {
      parallel {
        stage('LinuxAMI') {
          steps {
            sh '''cd $WORKSPACE/centos_base
/usr/local/bin/packer build centos.json'''
          }
        }
        stage('WindowsAMI') {
          steps {
            sh '''cd $WORKSPACE/windows_base
/usr/local/bin/packer build windows.json'''
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
