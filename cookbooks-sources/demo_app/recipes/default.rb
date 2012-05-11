index = File.join(node.iis.docroot, "index.aspx")

cookbook_file index

# As of Chef 0.10.10, we'll have full `rights` support
# http://wiki.opscode.com/display/chef/Improved+Windows+File+Security
execute "#{index} permissions" do
  command "Icacls #{index} /grant:r Users:R"
end