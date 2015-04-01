class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :review
  validates_length_of :content,
    presence: true,
    :minimum => 2
end
