class AddNameToCustomfronts < ActiveRecord::Migration[5.2]
  def change
      add_column :customfronts, :name, :string
  end
end
