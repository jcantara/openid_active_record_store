# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{openid_active_record_store}
  s.version = "1.0.3"
  s.authors = ['James Tucker', 'Kazuyoshi Tlacaelel']
  s.email = 'info@wildfireapp.com'
  s.homepage = 'http://github.com/wildfireapp/openid_active_record_store'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2014-05-14}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.3}
  s.summary = 'An ActiveRecord store for OpenID'
  s.description = 'An ActiveRecord store for OpenID, with Rails 4.1 bugfix'

  s.files = `git ls-files`.split - %W[.gitignore #{File.basename __FILE__}]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency("activerecord", [">= 3"])
      s.add_runtime_dependency("ruby-openid", [">= 2.2"])
      s.add_development_dependency("rails", [">= 3"])
      s.add_development_dependency("mysql2", [">= 0.3"])
    else
      s.add_dependency("activerecord", [">= 3"])
      s.add_dependency("ruby-openid", [">= 2.2"])
      s.add_development_dependency("rails", [">= 3"])
      s.add_development_dependency("mysql2", [">= 0.3"])
    end
  else
    s.add_dependency("activerecord", [">= 3"])
    s.add_dependency("ruby-openid", [">= 2.2"])
    s.add_development_dependency("rails", [">= 3"])
    s.add_development_dependency("mysql2", [">= 0.3"])
  end
end
