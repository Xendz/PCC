# -*- encoding: utf-8 -*-
# stub: rprogram 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rprogram"
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Postmodern"]
  s.date = "2012-07-16"
  s.description = "RProgram is a library for creating wrappers around command-line programs. RProgram provides a Rubyful interface to programs and all their options or non-options. RProgram can also search for programs installed on a system. files without having to use YAML or define classes named like the file."
  s.email = "postmodern.mod3@gmail.com"
  s.extra_rdoc_files = ["ChangeLog.md", "LICENSE.txt", "README.md"]
  s.files = ["ChangeLog.md", "LICENSE.txt", "README.md"]
  s.homepage = "https://github.com/postmodern/rprogram#readme"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.2.2"
  s.summary = "A library for creating wrappers around command-line programs."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubygems-tasks>, ["~> 0.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
    else
      s.add_dependency(%q<rubygems-tasks>, ["~> 0.1"])
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<rubygems-tasks>, ["~> 0.1"])
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
  end
end
