require "rake/clean"
CLOBBER.include "*.gem"

desc "Build the gem"
task :build do
  system "gem build canary.gemspec" or raise
end

desc "Install the gem"
task :install do
  version = File.read(File.expand_path("../../VERSION", __dir__)).chomp
  system "gem uninstall -a canary" or raise
  system "gem install canary-#{version}.gem" or raise
end
