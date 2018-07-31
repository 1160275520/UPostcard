class CreateFronts < ActiveRecord::Migration[5.2]
  def change
    create_table :fronts do |t|
      t.string(:name)
      t.string(:image_url)
      t.timestamp
    end
  end
end
