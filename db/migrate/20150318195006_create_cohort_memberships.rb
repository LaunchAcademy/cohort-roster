class CreateCohortMemberships < ActiveRecord::Migration
  def change
    create_table :cohort_memberships do |t|
      t.integer :student_id
      t.integer :cohort_id
      t.index [:student_id, :cohort_id], { unique: true }
    end
  end
end
