class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string  :title,                 null: false
      t.text :catch_copy,               null: false
      t.text :consent,                  null: false
      t.text :net,                      null: false
      t.text :access,                   null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
