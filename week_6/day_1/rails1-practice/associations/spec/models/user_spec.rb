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

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:gillian) { User.find_by_username("gillian") }
  subject(:gerald) { User.find_by_username("cousin_gerald") }
  let(:tame) { Video.find_by_title("The Less I Know the Better") }

  it "is associated with videos uploaded" do
    expect(gerald.videos.first.title).to eq("The Less I Know the Better")
  end

  it "is associated with comments" do
    expect(gillian.comments.first.body).to eq("first")
  end

  it "is associated with likes" do
    expect(gillian.likes.last.video_id).to eq(tame.id)
  end

  it "is associated with liked videos" do
    expect(gillian.liked_videos.first.title).to eq("The Less I Know the Better")
  end

  it "is associated with videos commented" do
    expect(gillian.videos_commented.first.id).to eq(tame.id)
  end

  # these are users who like the videos that gillian uploaded
  it "is associated with likers" do
    expect(gillian.likers.first.username).to eq("cousin_gerald")
  end

end
