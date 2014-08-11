class CreatePushes < ActiveRecord::Migration
  def change
    create_table :pushes do |t|
      t.text   :message,  null: false
      t.string :ptype,  null: false

      t.timestamps
    end
  end
end
