class AddRememberMeToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :remember_me, :string
  end
end
