default[:delayed_job] = {
  :staging => { :env => "staging", :workers_count => 1 },
  :production => { :env => "production", :workers_count => 3 },
}

