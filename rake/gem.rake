require "rake/clean"
CLOBBER.include "*.gem"

desc "Build the gem"
task :build do
  system "gem build ios_date_parser.gemspec" or raise
end

desc "Install the gem"
task :install do
  version = File.read(File.expand_path("../../VERSION", __dir__)).chomp
  system "gem uninstall -a ios_date_parser" or raise
  system "gem install ios_date_parser-#{version}.gem" or raise
end
