require 'rails/generators'
require 'rails/generators/migration'

class RandomizeIdGenerator < Rails::Generators::Base

    include Rails::Generators::Migration

    source_root File.join File.dirname(__FILE__), 'templates'
    desc 'Install RandomizeId'

    def create_initializer
        template 'initializer.rb', 'config/initializers/randomize_id.rb'
    end

end
