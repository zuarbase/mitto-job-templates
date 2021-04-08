# System Jobs  
  
`system.hjson` - the system job that monitors system resources and writes data to a jsonl file  
  
## Process Data  
  
Create a sequence with the following two jobs:  
  
`write_system_status_table.hjson` - write jsonl file to database  
`write_running_jobs_table.hjson` - write running jobs to database with ID from the first table  
  
