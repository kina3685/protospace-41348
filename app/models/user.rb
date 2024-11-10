class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, presence: true, uniqueness: true

  # プロフィールは任意だが、最大500文字までに制限
  validates :profile, length: { maximum: 500 }

  # 所属は必須
  validates :department, presence: true

  # 役職も必須
  validates :position, presence: true

  @name=name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :prototypes
end
