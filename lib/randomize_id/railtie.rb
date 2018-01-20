require 'rails/railtie'

module RandomizeId
    class Railtie < Rails::Railtie

        initializer 'randomize_id.initialize' do
            ActiveSupport.on_load :active_record do
                include RandomizeId if RandomizeId.configuration&.auto
            end
        end

    end
end
