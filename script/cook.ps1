knife winrm `
  -m ec2-174-129-55-195.compute-1.amazonaws.com `
  -x Administrator `
  -P xxxxx `
  'chef-client -c c:\chef\client.rb'