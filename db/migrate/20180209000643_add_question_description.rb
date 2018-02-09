class AddQuestionDescription < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :description, :text, null: false
  end
end
