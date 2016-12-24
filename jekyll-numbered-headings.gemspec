# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/numbered_headings/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-numbered-headings"
  spec.version       = Jekyll::NumberedHeadings::VERSION
  spec.authors       = ["muratayusuke"]
  spec.email         = ["info@muratayusuke.com"]

  spec.summary       = %q{Jekyll plugin: Add ordered number to headings.}
  spec.description   = %q{Jekyll plugin: Add ordered number to headings.}
  spec.homepage      = "https://github.com/muratayusuke/jekyll-numbered-headings"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
