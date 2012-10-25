task :default => :help
task :help do
end

FILES = %w(
.bashrc
.sagentrc
.rpmmacros
)

task :init do
  dir = File.expand_path(File.dirname(__FILE__))
  Dir.chdir(ENV["HOME"])
  FILES.each do |f|
    `ln -sf #{dir}/#{f} #{f}`
  end
end

task :clean do
  FILES.each do |f|
    `rm -f #{dir}/#{f} #{f}`
  end
end

# vim: ft=ruby ts=2 sw=2 sts=2 expandtab
