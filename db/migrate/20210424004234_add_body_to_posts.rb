class AddBodyToPosts < ActiveRecord::Migration[5.0]
  def change
    # remove_column :posts, :body, :string
    # remove_column :posts, :text, :string
    add_column :posts, :body, :text
  end
end
