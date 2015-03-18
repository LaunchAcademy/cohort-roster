[
  "Spring 2015",
  "Summer 2015"
].each do |cohort_name|
  Cohort.find_or_create_by!({name: cohort_name})
end

[
  {
    first_name: 'Dan',
    last_name: 'Smith',
    email: 'dan@example.com',
  },
  {
    first_name: 'Johnny',
    last_name: 'Appleseed',
    email: 'johnny@example.com'
  }
].each do |student_hash|
  Student.find_or_create_by!({email: student_hash[:email]}) do |student|
    student.first_name = student_hash[:first_name]
    student.last_name = student_hash[:last_name]
  end
end
