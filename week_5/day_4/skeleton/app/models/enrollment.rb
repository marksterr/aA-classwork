class Enrollment < ApplicationRecord

  belongs_to :user,
    class_name: 'Users',
    primary_key: :id,
    foreign_key: :student_id

  belongs_to :course,
    class_name: 'Courses'
    primary_key: :id,
    foreign_key: :course_id
end
