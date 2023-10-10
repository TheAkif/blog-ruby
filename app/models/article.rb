class Article < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :comments
    
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    def self.ransackable_associations(auth_object = nil)
      ["comments"]
    end
  end
  