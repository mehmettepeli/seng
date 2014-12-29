class Author < ActiveRecord::Base
  validates_format_of :email,  :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :username, :password, presence: true
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
end
