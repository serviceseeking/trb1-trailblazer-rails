# -*- encoding: utf-8 -*-
# stub: trb1-trailblazer-rails 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "trb1-trailblazer-rails".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Sutterer".freeze]
  s.date = "2017-01-21"
  s.email = ["apotonick@gmail.com".freeze]
  s.files = [".gitignore".freeze, ".travis.yml".freeze, "CHANGES.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "lib/trb1-trailblazer/operation/controller/active_record.rb".freeze, "lib/trb1-trailblazer/operation/model/active_model.rb".freeze, "lib/trb1-trailblazer/operation/responder.rb".freeze, "lib/trb1-trailblazer/operation/worker.rb".freeze, "lib/trb1-trailblazer/rails.rb".freeze, "lib/trb1-trailblazer/rails/autoloading.rb".freeze, "lib/trb1-trailblazer/rails/railtie.rb".freeze, "lib/trb1-trailblazer/rails/test/integration.rb".freeze, "lib/trb1-trailblazer/rails/version.rb".freeze, "trailblazer-rails.gemspec".freeze]
  s.homepage = "http://trailblazer.to".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.7".freeze
  s.summary = "Convenient Rails support for Trailblazer.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trb1-trailblazer>.freeze, [">= 1.0.4"])
      s.add_runtime_dependency(%q<trailblazer-loader>.freeze, [">= 0.1.0"])
      s.add_runtime_dependency(%q<reform-rails>.freeze, [">= 0.1.4"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<responders>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<sidekiq>.freeze, [">= 3.1.0"])
      s.add_development_dependency(%q<multi_json>.freeze, [">= 0"])
    else
      s.add_dependency(%q<trb1-trailblazer>.freeze, [">= 1.0.4"])
      s.add_dependency(%q<trailblazer-loader>.freeze, [">= 0.1.0"])
      s.add_dependency(%q<reform-rails>.freeze, [">= 0.1.4"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 0"])
      s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<responders>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<sidekiq>.freeze, [">= 3.1.0"])
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<trb1-trailblazer>.freeze, [">= 1.0.4"])
    s.add_dependency(%q<trailblazer-loader>.freeze, [">= 0.1.0"])
    s.add_dependency(%q<reform-rails>.freeze, [">= 0.1.4"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<responders>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<sidekiq>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
  end
end
