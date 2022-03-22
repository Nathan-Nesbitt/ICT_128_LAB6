# Answers

Please only modify `ICT_128_LAB_6.psm1`. Do not change the function names or the filename, for example if the demo code
looks like the following:

```ps
function Q1 {

}
```

Your solution should only be **between** the brackets. 

# Testing

We are going to be using pester in this lab. You can install it by running `Install-Module Pester -Force` then `Import-Module Pester -PassThru`

To test your answers simply run `./ICT_128_LAB_6.Tests.ps1`.

# Questions

1. Create a function that creates a single connection to a VM with the name `MyVM`. Get the processes on the system, 
    filter on only those whose names start with `n`. Filter on the remote machine, not locally. Return the list.

2. Create a function that creates multiple connections to VMs `VM1`, `VM2`, `VM3`. Get all of the Application logging 
    information from each of the systems. Limit it to the newest 300 entries to the logs and keep only those that have
    `EntryType` of `Error`. Create a hashtable of the VM names, and their corresponding events. Return the hash table.

3. Create a function that creates 3 jobs, have each one of the jobs sleep for 3000 seconds. Name the jobs `Job1`, `Job2` and `Job3`.
4. Create a function that finds the jobs that are complete in the system, and
    removes them.
5. Create a function that creates a job that starts a job that sleeps for 5000 seconds. Return the `Id` field of this job.
6. Create a function that takes in a time, and schedules a job each day at that time. Return the ID of that job.
7. Create a function that generates a self-signed certificate. The function should take in the following variables:
    - `Subject`
    - `Type`
    - `DnsName`
    - `CertStoreLocation`