class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :jirous, dependent: :destroy
   has_many :likes, dependent: :destroy
   has_many :liked_jirous, through: :likes, source: :jirou
   has_many :comments, dependent: :destroy
   validates :name, presence: true 
   validates :profile, length: { maximum: 200 }
   
  def already_liked?(jirou)
   self.likes.exists?(jirou_id: jirou.id)
  end
end
