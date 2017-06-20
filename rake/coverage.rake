require "simplecov"
require "rake/clean"
CLEAN.include "coverage"

task :coverage do
  coverage = SimpleCov.result.covered_percent
  raise "Spec coverage was only #{format '%.2f', coverage}%" if coverage < 100.0
end
