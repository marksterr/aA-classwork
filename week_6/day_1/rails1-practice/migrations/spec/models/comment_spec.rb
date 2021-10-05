require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "table exists" do 
    expect { Comment.new }.not_to raise_error(ActiveRecord::StatementInvalid)
  end

  describe "'body' column" do
    it "exists with a type of 'string'" do 
      expect(Comment.column_names).to include('body')
      expect(Comment.column_for_attribute('body').type).to eq(:string)
    end

    it "has a 'not null' constraint" do 
      expect(Comment.column_for_attribute('body').null).to be(false)
    end 
  end

  describe "'video_id' column" do
    it "exists with a type of 'integer'" do 
      expect(Comment.column_names).to include('video_id')
      expect(Comment.column_for_attribute('video_id').type).to eq(:integer)
    end
  
    it "has a 'not null' constraint" do 
      expect(Comment.column_for_attribute('video_id').null).to be(false)
    end 
  
    it "is indexed" do 
      expect(ActiveRecord::Base.connection.index_exists?(:comments, :video_id)).to be(true)
    end
  end

  describe "'commenter_id' column" do
    it "exists with a type of 'integer'" do 
      expect(Comment.column_names).to include('commenter_id')
      expect(Comment.column_for_attribute('commenter_id').type).to eq(:integer)
    end

    it "has a 'not null' constraint" do 
      expect(Comment.column_for_attribute('commenter_id').null).to be(false)
    end 

    it "is indexed" do 
      expect(ActiveRecord::Base.connection.index_exists?(:comments, :commenter_id)).to be(true)
    end
  end

  describe "'parent_comment_id' column" do 
    it "exists with a type of 'integer'" do 
      expect(Comment.column_names).to include('parent_comment_id')
      expect(Comment.column_for_attribute('parent_comment_id').type).to eq(:integer)
    end

    it "does NOT have a not null constraint" do 
      expect(Comment.column_for_attribute('parent_comment_id').null).to be(true)
    end 

    it "is indexed" do 
      expect(ActiveRecord::Base.connection.index_exists?(:comments, :parent_comment_id)).to be(true)
    end
  end

  describe 'timestamps' do
    it "columns are included ('created_at' and 'updated_at')" do
      expect(Comment.column_names).to include('created_at')
      expect(Comment.column_for_attribute('created_at').type).to eq(:datetime)
      expect(Comment.column_names).to include('updated_at')
      expect(Comment.column_for_attribute('updated_at').type).to eq(:datetime)
    end
  end
 
  it 'table has no additional columns' do
    expect(Comment.column_names).to contain_exactly('id','body','video_id','commenter_id','parent_comment_id','created_at','updated_at')
  end



  
end
