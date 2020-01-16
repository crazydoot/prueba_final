class User < ApplicationRecord
  has_many :locations, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
              format: { with: EMAIL_REGEX },
              uniqueness: { case_sensitive: false }
  validates :rfc, presence: true
  validates :password, presence: true
  validates :primer_apellido, presence: true
  validates :segundo_apellido, presence: true
  validates :nombre_empresa, presence: true

  has_secure_password
end
