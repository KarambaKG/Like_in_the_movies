class Command < ApplicationRecord
  has_many :users
  has_and_belongs_to_many :achievements

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "missing/missing.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
