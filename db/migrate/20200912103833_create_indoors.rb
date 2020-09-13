class CreateIndoors < ActiveRecord::Migration[6.0]
  def change
    create_table :indoors do |t|
      t.string :indoor_name
      t.string :indoor_text
      t.references :user, null:false, foreign_key: true 
      t.timestamps
    end
  end
end
