require 'rubygems'
require 'rake/gempackagetask'
require 'rubygems/specification'
require 'date'

GEM = "git-changelog"
GEM_VERSION = "0.9.0"
AUTHORS = "Jason Noble", "Rein Henrichs"
SUMMARY = "A gem that provides the git-checkout git command"

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = false
  s.summary = SUMMARY
  s.description = s.summary
  s.authors = AUTHORS
  s.executables = ['git-changelog']
  s.add_dependency('versionomy')
  s.autorequire = GEM
  s.files = %w(LICENSE README Rakefile bin/git-changelog)
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "install the gem locally"
task :install => [:package] do
  sh %{sudo gem install pkg/#{GEM}-#{GEM_VERSION}}
end

desc "create a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end
