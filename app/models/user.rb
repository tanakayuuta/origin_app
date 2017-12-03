class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
         
  validates :name,  presence: true, length: { maximum: 50 }
end
