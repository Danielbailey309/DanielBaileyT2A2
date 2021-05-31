class Company < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 3}
  validate :valid_name?
  validates :cost, presence: true

  def valid_name?
    return name != nil && !name.strip.empty?
  end
end
