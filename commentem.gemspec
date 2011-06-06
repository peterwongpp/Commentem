# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{commentem}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Wong"]
  s.date = %q{2011-06-07}
  s.description = %q{A generic commenting system.}
  s.email = %q{peter@peterwongpp.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/commentem.rb", "lib/commentem/commentable.rb", "lib/commentem/commenter.rb", "lib/generators/commentem_generator.rb", "lib/generators/templates/migration.rb", "lib/generators/templates/model.rb"]
  s.files = ["README.rdoc", "Rakefile", "commentem.gemspec", "init.rb", "lib/commentem.rb", "lib/commentem/commentable.rb", "lib/commentem/commenter.rb", "lib/generators/commentem_generator.rb", "lib/generators/templates/migration.rb", "lib/generators/templates/model.rb", "Manifest"]
  s.homepage = %q{http://github.com/peterwongpp/Commentem}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Commentem", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{commentem}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A generic commenting system.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
