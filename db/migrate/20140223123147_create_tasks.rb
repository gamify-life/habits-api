class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :ad
      t.string :name
      t.integer :target_count
      t.string :start_date
      t.integer :duration

      t.timestamps
    end
  end
end
