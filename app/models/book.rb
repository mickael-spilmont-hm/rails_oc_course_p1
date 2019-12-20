class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: {
    message: "Title field is empty"
  }

  validates :title, uniqueness: {
    message: "Title already exist"
  }

  scope :sf, -> { where(category_id: 1) }
end