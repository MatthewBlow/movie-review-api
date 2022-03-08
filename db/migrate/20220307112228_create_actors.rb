class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :image_url
      t.string :age
      t.string :slug

      t.timestamps
    end
  end
end
