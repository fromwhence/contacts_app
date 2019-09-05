class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  def friendly_updated_at
    updated_at.strftime('%m/%d/%Y')
  end

  def full_name
    result = "#{first_name} "
    result += "#{middle_name} " if middle_name 
    result += "#{last_name}"
  end

  def japan_number
    "+81 #{phone_number}"
  end


end
