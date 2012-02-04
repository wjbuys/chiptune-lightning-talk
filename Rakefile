def os
  if File.exist?("/etc/lsb-release")
    release = File.read("/etc/lsb-release")
    release[/^DISTRIB_ID=(.*)$/, 1]
  else
    "unknown"
  end
end

task :dependencies do
  if os == "Ubuntu"
    sh "sudo apt-get install portaudio19-dev"
  else
    echo "No idea how to install portaudio for your linux distro (#{os}). You'll need to install portaudio development headers manually."
  end
end

task :setup => :dependencies do
  sh("git submodule init && git submodule update")
  Dir.chdir "vendor/bloopsaphone" do
    sh("make ruby")
  end
end

task :demo do
  Dir.chdir "vendor/bloopsaphone/ext/ruby" do
    sh("ruby tune_warp.rb")
  end
end
