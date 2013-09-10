name "gary"
description "a server meant to dev on, in the cloud"
run_list "recipe[cloud-dev]" 
#default_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
#override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
