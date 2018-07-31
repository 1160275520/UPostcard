class AddLinkToPostcards < ActiveRecord::Migration[5.2]
  def change
   add_column :postcards, :link, :string
  end
end
