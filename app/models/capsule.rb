class Capsule < ApplicationRecord
  belongs_to :charity
  belongs_to :need

  has_one_attached :poster

  def to_s
    "#{quote}"
  end
end
