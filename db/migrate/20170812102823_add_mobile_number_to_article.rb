class AddMobileNumberToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :mobile_number, :bigint
  end
end
