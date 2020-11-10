pipeline{
  environment{
  RESULT = 0
  n = 0
   }
  agent any
  stages{
    stage ("Dev"){
      stages{
      stage ("Test")
      {
        steps{
         sh './test.sh'
         script{
         env.n = sh(script: 'cat result', resturnStatus: true)
         env.RESULT = sh(script: 'cat result', returnStdout: true).trim()
       } 
       sh 'echo $n'
       sh 'echo $RESULT'
       echo "${env.RESULT}" 
       echo "${env.n}"
       }
      }
     }
    }   
   }
}
