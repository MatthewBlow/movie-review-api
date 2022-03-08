class Actor < ApplicationRecord
  has_and_belongs_to_many :movies

  before_create :slugify

    def slugify
        self.slug = name.parameterize
    end
end
