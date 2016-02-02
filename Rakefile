require 'rubygems'
require 'tmpdir'

require 'bundler/setup'
require 'jekyll'

task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    source: '.',
    destination: '_site'
  })).process
end

task publish: [:generate] do
  Dir.mktmpdir do |tmp|
    cp_r '_site/.', tmp
    cp_r 'CNAME', tmp

    pwd = Dir.pwd
    Dir.chdir tmp

    system 'git init'
    system 'git add .'
    system "git commit -m '#{Time.now.utc}'"
    system 'git remote add origin git@github.com:stepankuzmin/stepankuzmin.github.io.git'
    system 'git push origin master --force'

    Dir.chdir pwd
  end
end
