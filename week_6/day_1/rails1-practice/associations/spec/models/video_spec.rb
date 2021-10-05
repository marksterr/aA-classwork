# == Schema Information
#
# Table name: videos
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :text             not null
#  uploader_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Video, type: :model do
  subject(:video) { Video.find_by_title("The Less I Know the Better") }

  it "is associated with an uploader" do
    expect(video.uploader.username).to eq("cousin_gerald")
  end

  it "is associated with comments" do
    expect(video.comments.find_by_body("first").body).to eq("first")
  end

  it "is associated with likes" do
    like_id = Like.find_by_video_id(video.id).id
    expect(video.likes.first.id).to eq(like_id)
  end

  it "is associated with likers" do
    expect(video.likers.first.username).to eq("gillian")
  end

  it "is associated with commenters" do
    expect(video.commenters.find_by_username("gillian").username).to eq("gillian")
  end

  it "is associated with likers comments" do
    expect(video.likers_comments.first.body).to eq("first")
  end

  describe "validations" do 
    it "require video to be associated with an uploader" do 
      is_expected.to validate_presence_of(:uploader).with_message(/must exist/)
    end
  end
  
end
