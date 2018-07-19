class AddActiveToArticles < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :active, :bool, default: true
  end
end
