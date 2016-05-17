class Endorsement < ActiveRecord::Base
  belongs_to :image

  validates_uniqueness_of :user_id
  validates_presence_of :image_id
end
