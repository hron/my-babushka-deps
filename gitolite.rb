dep 'gitolite', :template => 'managed' do
  installs {
    via :apt, %w(gitolite)
  }


  met? {
    File.exist?('/var/lib/gitolite/.gitolite.rc')
  }

  meet {
    pkg_manager.install! installs
    shell('dpkg-reconfigure -f readline gitolite', :sudo => true)
  }
end
