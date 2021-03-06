class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :books, dependent: :destroy
has_many :post_comments, dependent: :destroy
has_many :favorites, dependent: :destroy
validates :introduction, length: { maximum: 50 }
  # belongs_to :books
  attachment :profile_image, destroy: false

  validates :name, length: {maximum: 20, minimum: 2}, uniqueness: true
end
