class CreatCustomfronts < ActiveRecord::Migration[5.2]
  def change
    create_table :customfronts do |t|
      t.string(:image_url)
      t.timestamp
    end
  end
end
