class Like < ApplicationRecord
  belongs_to :jirou
  belongs_to :user
  validates_uniqueness_of :jirou_id, scope: :user_id
end
