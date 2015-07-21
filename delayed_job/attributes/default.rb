default[:delayed_job] = {
  :staging => { :workers_count => 1 },
  :production => { :workers_count => 3 },
}

