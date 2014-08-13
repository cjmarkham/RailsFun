class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :county
      t.string :post_code
      t.integer :home_phone
      t.integer :mobile_number, :null

      t.timestamps
    end
  end
end
