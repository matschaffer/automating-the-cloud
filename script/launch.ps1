# First run this
# ec2-run-instances `
#   ami-878c54ee `
#   -t m1.large `
#   -k chef-windows `
#   -g windows

# Then insert your instance ID
# (e.g., i-1234abcd) and run this
# ec2-get-password `
#   i-718f3d17 `
#   -k .chef/chef-windows.pem

# Then connect with the given password via
# RDP configure WinRM if neeeded.
# 
# winrm quickconfig -q
# winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="300"}'
# winrm set winrm/config '@{MaxTimeoutms="1800000"}'
# winrm set winrm/config/service '@{AllowUnencrypted="true"}'
# winrm set winrm/config/service/auth '@{Basic="true"}'

# Then use this command to create an AMI
# we can use to avoid initial setup.
# ec2-create-image `
#   i-718f3d17 `
#   -n win2k8r2 `
#   -d "Password is XXXXXX"

# Now we can launch new instances that are ready to rock-n-roll
ec2-run-instances `
  ami-809b3fe9 `
  -t m1.large `
  -k chef-windows `
  -g windows