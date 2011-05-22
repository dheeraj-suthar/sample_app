# == Schema Information
# Schema version: 20110522101213
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attr_accessible :name, :email

  validates :name, :presence => true,
		   :length => { :maximum => 15 }

  validates :email, :presence => true,
		    :uniqueness => { :case_sensitive => false },
		    :format => { :with => email_regex }
end
