task :default => :help
task :help do
end

@dir = File.expand_path(File.dirname(__FILE__))
@files = %w(
.bashrc
.sagentrc
.rpmmacros
)
@exclude_paths = %w(
lib
redmine
)

task :init do
  Dir.chdir(ENV["HOME"])
  @files.each do |f|
    `cp #{@dir}/#{f} #{f}`
  end
  paths = `find /opt -type d \\( -name bin -o -name sbin \\) 2> /dev/null` 
  open(".bashrc", "a") do |wio|
    wio.puts 'export PATH=%s:$PATH' % [ paths.split(/\n/).compact.join(":") ]
  end
  puts "Please execute '. ~/.bashrc'"
end

task :clean do
  Dir.chdir(ENV["HOME"])
  @files.each do |f|
    `rm -f #{f}`
  end
end

# vim: ft=ruby ts=2 sw=2 sts=2 expandtab
