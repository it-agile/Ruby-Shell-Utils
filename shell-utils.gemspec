Gem::Specification.new do |s|
   s.version = "0.0.3"
   s.date = %q{2011-09-14}
   s.name = %q{shell-utils}
   s.authors = ["CodersDojo-Team"]
   s.email = %q{codersdojo@it-agile.de}
   s.summary = %q{Shell Utilities}
   s.description = %q{Shell utilities.}
   s.files = Dir["lib/*"]
   s.rubyforge_project = 'shell_utils'
   s.has_rdoc = true
   s.test_files = Dir['spec/*']
   s.required_ruby_version = '>= 1.8.6'
   s.add_dependency('rubyzip', '>= 0.9.4')
end
