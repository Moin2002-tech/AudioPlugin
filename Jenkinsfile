pipeline 
{
agent any
	stages 
	{
		stage('Build') 
		{
			steps 
			{
				sh echo 'Building...'
				sh 'chmod +x script/Linux-build.sh'
				sh 'script/Linux-build.sh'
				archiveArtifacts artifacts: 'bin/debug/', fingerprint: true
			}

		}
		
		stage('Test') 
		{
			steps 
			{
				echo 'Testing...'
				sh 'chmod +x script/Linux-Run.sh'
				sh 'script/Linux-Run.sh'
			}
		}
		
	}
	
}