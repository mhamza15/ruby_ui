# -*- encoding: utf-8 -*-
# stub: tailwind_merge 0.13.2 ruby lib

Gem::Specification.new do |s|
  s.name = "tailwind_merge".freeze
  s.version = "0.13.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "funding_uri" => "https://github.com/sponsors/gjtorikian/", "homepage_uri" => "https://www.github.com/gjtorikian/tailwind_merge", "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Garen J. Torikian".freeze]
  s.bindir = "exe".freeze
  s.date = "2024-10-18"
  s.email = ["gjtorikian@gmail.com".freeze]
  s.homepage = "https://www.github.com/gjtorikian/tailwind_merge".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 3.1".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Utility function to efficiently merge Tailwind CSS classes without style conflicts.".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<lru_redux>.freeze, ["~> 1.1"])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.6"])
  s.add_development_dependency(%q<minitest-focus>.freeze, ["~> 1.1"])
end
