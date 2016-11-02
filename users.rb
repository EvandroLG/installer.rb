module Users
  BASH_PROFILE = '/Users/admin/.bash_profile'
  BASH_PROFILE_GIT = 'https://raw.githubusercontent.com/EvandroLG/dotfiles/master/.bash_profile'

  def self.create_bash_profile
    unless File.file? BASH_PROFILE
      system "#{BASH_PROFILE_GIT} > #{BASH_PROFILE}"
    end
  end
end
