class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :ruby_version
      t.string :rails_version

      t.timestamps
    end
  end
end
