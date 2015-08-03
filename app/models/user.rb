class User < ActiveRecord::Base
  #dependent: :destroy (listing is there because of user, if User is destroyed, listing is automaticly deleted)
  has_many :listings, dependent: :destroy
  validates :name, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
