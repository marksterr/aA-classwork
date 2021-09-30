class User < ApplicationRecord

  has_many :enrollment,
    class_name: 'Enrollments',
    primary_key: :id,
    foreign_key: :enrollment_id
end
