class AddLastNameToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :last_name, :string
  end
end
