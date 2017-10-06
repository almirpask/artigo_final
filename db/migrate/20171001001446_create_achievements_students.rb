class CreateAchievementsStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements_students do |t|
      t.references :achievement, foreign_key: true
      t.references :student, foreign_key: true
    end
  end
end
