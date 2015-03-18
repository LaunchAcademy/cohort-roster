class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.date :started_on
      t.date :ended_on
      t.string :name, null: false
      t.index :name, unique: true
    end
  end
end
