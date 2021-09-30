# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

  has_many :enrollment,
    class_name: 'Enrollment',
    primary_key: :id,
    foreign_key: :enrollment_id
end
