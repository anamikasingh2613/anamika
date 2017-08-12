class RemoveConfirmPasswordFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :confirm_password, :string
  end
end
