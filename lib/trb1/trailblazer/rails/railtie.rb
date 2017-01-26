require "rails/railtie"
require "trailblazer/loader"

module Trb1
  module Trailblazer
    class Railtie < ::Rails::Railtie
      # FV: def self.load_concepts(app)
      # FV:   # Loader.new.(insert: [ModelFile, before: Loader::AddConceptFiles]) { |file| require_dependency("#{app.root}/#{file}") }
      # FV:   load_for(app)
      # FV:
      # FV:   ::Rails.application.railties.find_all { |tie| tie.is_a?(::Rails::Engine) }.each do |engine|
      # FV:     load_for(engine)
      # FV:   end
      # FV: end

      # FV: def self.load_for(app)
      # FV:   ::Trailblazer::Loader.new.(prepend: AllModelFiles, root: app.root) { |file| require_dependency(file) }
      # FV: end

      # This is to autoload Operation::Dispatch, etc. I'm simply assuming people find this helpful in Rails.
      initializer "trb1-trailblazer.library_autoloading" do
        require "trb1-trailblazer/autoloading"
      end

      # thank you, http://stackoverflow.com/a/17573888/465070
      # FV: initializer 'trb1-trailblazer.install', after: "reform.form_extensions" do |app|
      # FV:   # the trb autoloading has to be run after initializers have been loaded, so we can tweak inclusion of features in
      # FV:   # initializers.
      # FV:   reloader_class.to_prepare do
      # FV:     ::Trailblazer::Railtie.load_concepts(app)
      # FV:   end
      # FV: end

      # initializer "trailblazer.roar" do
      #   require "trb1/trailblazer/rails/roar" #if Object.const_defined?(:Roar)
      # end

      initializer "trb1-trailblazer.application_controller" do
        ActiveSupport.on_load(:action_controller) do
          include Trb1::Trailblazer::Operation::Controller
        end
      end

      # Prepend model file, before the concept files like operation.rb get loaded.
      # FV: ModelFile = ->(input, options) do
      # FV:   model = "app/models/#{options[:name]}.rb"
      # FV:   File.exist?(model) ? [model]+input : input
      # FV: end

      # Load all model files before any TRB files.
      # FV: AllModelFiles = ->(input, options) do
      # FV:   Dir.glob("#{options[:root]}/app/models/**/*.rb") + input
      # FV: end

      private

      def reloader_class
        # Rails 5.0.0.rc1 says:
        # DEPRECATION WARNING: to_prepare is deprecated and will be removed from Rails 5.1
        # (use ActiveSupport::Reloader.to_prepare instead)
        if Gem.loaded_specs['activesupport'].version >= Gem::Version.new('5')
          ActiveSupport::Reloader
        else
          ActionDispatch::Reloader
        end
      end
    end
  end
end
