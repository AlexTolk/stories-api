class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.string :text

      t.timestamps
    end
  end
end
