class AddImg < ActiveRecord::Migration[5.0]
  def change
    add_column :sentences, :picture, :string
  end
end
