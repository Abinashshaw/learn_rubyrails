class Customer < ApplicationRecord
  def self.search(search)
    if search
      where (["name LIKE ?", "%#{search}%"])
      where (["email LIKE ?", "%#{search}%"])
    else
      all
    end
  end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
end
