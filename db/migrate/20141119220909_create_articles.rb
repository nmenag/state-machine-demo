class CreateArticles < ActiveRecord::Migration
  def change
    drop_table :articles
    create_table :articles do |t|
      t.string :state
      t.timestamps
    end
  end
end
