knife winrm `
  "role:demo_app" `
  -a ec2.public_hostname `
  -x Administrator `
  -P xxxxx `
  'chef-client -c c:\chef\client.rb'