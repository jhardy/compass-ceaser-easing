Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1.0"
  s.date = "2011-03-22"

  # Gem Details
  s.name = "ceaser-easing"
  s.authors = ["Jared Hardy"]
  s.summary = %q{a css transition implementation of the Penner equations based on @matthewlein css conversions for compass}
  s.description = %q{a css transition implementation of the Penner equations based on @matthewlein css conversions for compass}
  s.email = "jared@jaredhardy.com"
  s.homepage = "http://www.jaredhardy.com/"

  # Gem Files
  s.files = %w(README.mkdn)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.has_rdoc = false
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11.beta.3"])
end

