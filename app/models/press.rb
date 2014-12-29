class Press < ActiveRecord::Base

  validates :title, :content, presence: true

end
