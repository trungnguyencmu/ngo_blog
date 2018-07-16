class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.belongs_to :category, index: true
    	t.text :content

    	t.timestamps
    end
  end
end
