class ActorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :age, :slug

  has_many :movies
end
