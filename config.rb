require "bundler/setup"
Bundler.require

###
# LiveReload
###
activate :livereload

###
# Compass
###

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :layout, nil
set :css_assets_paths, ["#{root}/vendor/stylesheets/"]

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable asset hash
  # activate :asset_hash

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

after_configuration do
  root = Dir.pwd
  tmp_path = Pathname.new(File.join("#{root}/tmp/ember-rails"))

  FileUtils.mkdir_p(tmp_path)
  FileUtils.cp(::Ember::Source.bundled_path_for("ember.js"), tmp_path.join("ember.js"))
  FileUtils.cp(::Ember::Data::Source.bundled_path_for("ember-data.js"), tmp_path.join("ember-data.js"))
  sprockets.append_path(tmp_path)

  # Make the handlebars.js and handlebars.runtime.js bundled
  # in handlebars-source available.
  sprockets.append_path(File.expand_path('../', ::Handlebars::Source.bundled_path))

  # Allow a local variant override
  ember_path = Pathname.new(File.join("#{root}/vendor/assets/ember"))
  sprockets.prepend_path(ember_path.to_s) if ember_path.exist?
end
