dep 'gitolite', :template => 'managed' do
  installs {
    via :apt, %w(gitolite)
  }

  met? {
    return false
  }
  meet {
    pkg_manager.install! installs
  }
end
