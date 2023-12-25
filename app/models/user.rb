class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable


  PROFILE_TITLE = [
  "Senior ruby on rails developer",
  "Full stack ruby on rails developer",
  "Senior full stack ruby on rails developer",
  "junior full stack ruby on rails developer",
  "Senior java developer",
  "Senior Front End developer"
  ].freeze  

  def name
    "#{first_name} #{last_name}".strip
  end    

  def self.ransackable_attributes(auth_object = nil)
    [ 'country', 'city' ]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
