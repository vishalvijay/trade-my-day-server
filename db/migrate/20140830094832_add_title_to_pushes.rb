class AddTitleToPushes < ActiveRecord::Migration
  def change
    add_column :pushes, :title, :string, null: false, default: ""
  end
end
