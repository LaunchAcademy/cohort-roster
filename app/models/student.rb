class Student < ActiveRecord::Base
  has_many :cohort_memberships

  has_many :cohorts,
    through: :cohort_memberships
end
