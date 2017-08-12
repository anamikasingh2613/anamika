class RemoveRememberMeFromArticle < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :remember_me, :string
  end
end
