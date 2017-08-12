class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :email
      t.date :date

      t.timestamps
    end
  end
end
