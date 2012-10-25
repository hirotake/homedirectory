task :default => :help
task :help do
end

@dir = File.expand_path(File.dirname(__FILE__))
@files = %w(
.bashrc
.sagentrc
.rpmmacros
)

task :init do
  Dir.chdir(ENV["HOME"])
  @files.each do |f|
    `cp #{@dir}/#{f} #{f}`
  end
end

task :clean do
  Dir.chdir(ENV["HOME"])
  @files.each do |f|
    `rm -f #{f}`
  end
end

# vim: ft=ruby ts=2 sw=2 sts=2 expandtab
