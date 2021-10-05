# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  liker_id   :integer          not null
#  video_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) { User.first }
  subject(:like) { Like.find_by(liker_id: user.id) }
  let(:video) { Video.find_by_id(like.video_id) }

  it "is associated with a liker" do
    expect(like.liker.username).to eq(user.username)
  end

  it "is associated with a video" do
    expect(like.video.title).to eq(video.title)
  end

  describe "validations" do 
    it "require like to be associated with a liker" do 
      is_expected.to validate_presence_of(:liker).with_message(/must exist/)
    end
    it "require like to be associated with a video" do 
      is_expected.to validate_presence_of(:video).with_message(/must exist/)
    end
  end

end
