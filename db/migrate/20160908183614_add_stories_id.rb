class AddStoriesId < ActiveRecord::Migration[5.0]
  def change
    add_column :sentences, :story_id, :integer
  end
end
