class Post < ActiveRecord::Base
  has_many :comments

validates :author, presence: true
validates :title, presence: true
validates :content, presence: true

def commentator
return 'No content!' if comments.none?
self.comments.map(&:content).inject(:+)

end


end
