class AddUsersToPostcards < ActiveRecord::Migration[5.2]
  def change
   add_column :postcards, :user, :string
  end
end
