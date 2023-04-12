class Charity < ApplicationRecord
  has_many :capsules

  has_one_attached :logo

  def to_s
    "#{name}"
  end
end
