class Cohort < ActiveRecord::Base
  has_many :cohort_memberships

  has_many :students,
    through: :cohort_memberships
end
