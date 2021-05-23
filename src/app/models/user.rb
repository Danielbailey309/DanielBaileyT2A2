class User < ApplicationRecord
  belongs_to :role
  has_many :companies, dependent: :destroy
end
