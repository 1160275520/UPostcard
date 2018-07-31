class CreatePostcards < ActiveRecord::Migration[5.2]
  def change
    create_table :postcards do |t|
      t.string(:description)
      t.string(:r_name)
      t.string(:r_address_line1)
      t.string(:r_address_line2)
      t.string(:r_city)
      t.string(:r_state)
      t.string(:r_zip)
      t.string(:s_name)
      t.string(:s_address_line1)
      t.string(:s_address_line2)
      t.string(:s_city)
      t.string(:s_state)
      t.string(:s_zip)
      t.string(:front)
      t.string(:back)
      t.string(:name)
      t.string(:lobid)
    end
  end
end
