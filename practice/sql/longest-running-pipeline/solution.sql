select distinct pipe_name from data_pipes where dur_secs = (select max(dur_secs) from data_pipes)
