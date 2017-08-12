class AddRememberMeToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :remember_me, :boolean
  end
end
