class User < ActiveRecord::Base
  belongs_to :company
  has_many :clients
  has_many :user_messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
    :recoverable, :rememberable, :trackable, :validatable
end
