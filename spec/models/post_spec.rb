require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.create(title: 'Hello', text: 'This is my first post', likes_counter: 0, comments_counter: 0)}

  before { subject.save }

  it 'title should be present' do 
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be greater_than_or_equal zero' do 
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be greater_than_or_equal zero' do 
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end
end
