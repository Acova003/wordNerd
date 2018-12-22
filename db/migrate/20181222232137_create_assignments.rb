class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :word_1
      t.string :word_2
      t.string :response

      t.timestamps
    end
  end
end
