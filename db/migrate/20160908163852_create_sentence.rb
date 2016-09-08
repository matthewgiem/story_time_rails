class CreateSentence < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.column :sentence, :string
      t.column :user, :string

      t.timestamps
    end
  end
end
