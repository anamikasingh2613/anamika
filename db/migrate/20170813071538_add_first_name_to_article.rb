class AddFirstNameToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :first_name, :string
  end
end
