class Carrier < ActiveRecord::Base

  validates :title, :content, presence: true

end
