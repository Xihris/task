class Unit < ApplicationRecord

  validates :date_finish, :quan_u, :quan_f, :comment, presence: true, on: :create
end
