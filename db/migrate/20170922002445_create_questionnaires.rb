class CreateQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaires do |t|
      t.string :question
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
