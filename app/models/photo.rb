class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :filter, :name, :url, :user_id
end
