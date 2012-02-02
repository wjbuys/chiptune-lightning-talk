task :dependencies do
  sh "sudo apt-get install portaudio19-dev"
end

task :setup => :dependencies do
  sh("git submodule init && git submodule update")
  Dir.cd "vendor/bloopsaphone" do
    sh("make ruby")
  end
end

task :demo do
  Dir.cd "vendor/bloopsaphone/ext/ruby" do
    sh("ruby tune_warp.rb")
  end
end
