class Contact < ApplicationRecord
  validates :name,:Email,:content, presence: true ,length: {in: 1..140}
end

#validates :name, presence: true
#validates :Email, presence: true
#validates :content, presence: true
#validates :name, length: {in: 1..140}
#validates :Email, length: {in: 1..140}
#validates :content, length: {in: 1..140}
