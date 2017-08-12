class AddPasswordToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :password, :string
  end
end
