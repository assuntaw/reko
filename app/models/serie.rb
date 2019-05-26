class Serie < ApplicationRecord
  has_many :rekos, as: :content

  def to_s
    "#{title} (S#{season})"
  end
end
