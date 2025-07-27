class CreateTestDesigns < ActiveRecord::Migration[8.0]
  def change
    create_table :test_designs do |t|
      t.string :name
      t.string :email_address
      t.text :description

      t.timestamps
    end
  end
end
