default[:delayed_job] = {
  :stagingapp => { :env => "staging", :workers_count => 1 },
  :productionapp => { :env => "production", :workers_count => 3 },
}

