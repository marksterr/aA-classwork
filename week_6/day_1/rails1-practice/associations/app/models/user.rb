# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  password   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord

  has_many :comments,
    class_name: 'Comment',
    foreign_key: :commenter_id,
    primary_key: :id

  has_many :likes,
    primary_key: :id,
    foreign_key: :liker_id,
    class_name: 'Like'
  
  has_many :videos,
    primary_key: :id,
    foreign_key: :uploader_id,
    class_name: 'Video'

  has_many :liked_videos,
    through: :likes,
    source: :video

  has_many :videos_commented,
    through: :comments,
    source: :video

  has_many :likers,
    through: :videos,
    source: :likers
end