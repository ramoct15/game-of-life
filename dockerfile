node('UBUNTU,WEBNODE'){
    stage('scm'){
    git 'https://github.com/wakaleo/game-of-life.git'
    }

    stage('build'){
    sh label: '', script: 'mvn package'
    }

    stage('postbuild'){
    junit 'gameoflife-web/target/surefire-reports/*.xml'
    
    }

}
