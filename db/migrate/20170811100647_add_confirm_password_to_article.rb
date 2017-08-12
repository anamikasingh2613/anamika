class AddConfirmPasswordToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :confirm_password, :string
  end
end
