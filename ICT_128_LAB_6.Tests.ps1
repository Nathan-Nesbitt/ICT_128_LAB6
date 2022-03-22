BeforeAll {
    Import-Module -Name ./ICT_128_LAB_6.psm1
}


Describe 'Check-Q3' {
    It 'Basic Test' {
        Get-Job | Stop-Job
        Get-Job | Remove-Job
        
        Q3
        
        $job1 = Get-Job -Name "Job1" 
        $job2 = Get-Job -Name "Job2"
        $job3 = Get-Job -Name "Job3"

        $job1.State | Should -Be "Running"
        $job2.State | Should -Be "Running"
        $job3.State | Should -Be "Running"

        Stop-Job $job1.Id
        Stop-Job $job2.Id
        Stop-Job $job3.Id

        $job1.State | Should -Be "Stopped"
        $job2.State | Should -Be "Stopped"
        $job3.State | Should -Be "Stopped"
    }
}

Describe 'Check-Q4' {
    It 'Single Test' {
        Get-Job | Stop-Job
        Get-Job | Remove-Job
        Q4
        $jobs = Get-Job
        foreach ($job in $jobs) {
            $job.State | Should -Not -Be "Completed"
        }
    }
}

Describe 'Check-Q5' {
    It 'Basic Test' {
        Get-Job | Stop-Job
        Get-Job | Remove-Job
        $jobID = Q5
        $job = Get-Job $jobID
        $childJob = $job.ChildJobs[0]
        $childJob | Should -not -BeNullOrEmpty
    }
}

Describe 'Check-Q6' {
    It 'Basic Test' {
        Get-Job | Stop-Job
        Get-Job | Remove-Job
        $jobID = Q6
        $job = Get-ScheduledJob $jobID 
        $job.Id | Should -be $jobID
    }
}