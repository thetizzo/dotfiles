require 'rake'

# This install script is based on @r00k's install script here
# https://github.com/r00k/dotfiles/blob/master/Rakefile
desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  excluded_files = %w[
    Rakefile 
    README.md 
    LICENSE 
    id_dsa.pub
    git-crypt-key
    secrets
    work_profile
  ]

  Dir['*'].each do |file|
    next if excluded_files.include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end

  # Handle ssh pubkey on its own
  # puts "Linking public ssh key"
  # system %Q{rm "$HOME/.ssh/id_dsa.pub"}
  # system %Q{ln -s "$PWD/id_dsa.pub" "$HOME/.ssh/id_dsa.pub"}

  # Need to do this to make vim use RVM's ruby version
  # puts "Moving zshenv to zshrc"
  # system %Q{sudo mv /etc/zshenv /etc/zshrc}

  system %Q{mkdir ~/.tmp} unless Dir.exist?(File.join(ENV["HOME"], ".tmp"))
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
