class Book < ApplicationRecord
  belongs_to :author
  delegate :name, to: :author, prefix: true, allow_nil: true
  # Book.first.author_name
  # Book.first.author.name
end
