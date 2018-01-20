module RandomizeId

    extend ActiveSupport::Concern

    included do
        before_create :randomize_id
    end

    private

    def randomize_id
        begin
            self.id = SecureRandom.random_number 9_223_372_036_854_775_807
        end while self.class.where(id: self.id).exists?
    end

end
