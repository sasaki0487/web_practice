class CreateCommentBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_boards do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
