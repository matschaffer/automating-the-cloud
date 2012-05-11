name "demo_app"
description "A demo app"

default_attributes iis: { accept_eula: true }

run_list "recipe[iis::mod_mvc3]",
         "recipe[demo_app]"