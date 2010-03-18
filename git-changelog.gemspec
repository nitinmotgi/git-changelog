# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{git-changelog}
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Noble", "Rein Henrichs"]
  s.autorequire = %q{git-changelog}
  s.date = %q{2010-03-18}
  s.default_executable = %q{git-changelog}
  s.description = %q{A gem that provides the git-checkout git command}
  s.executables = ["git-changelog"]
  s.files = ["LICENSE", "README", "Rakefile", "bin/git-changelog"]
  s.has_rdoc = false
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A gem that provides the git-checkout git command}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<versionomy>, [">= 0"])
    else
      s.add_dependency(%q<versionomy>, [">= 0"])
    end
  else
    s.add_dependency(%q<versionomy>, [">= 0"])
  end
end
