class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :sets
      t.string :reps
      t.string :integer
      t.references :workout, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
