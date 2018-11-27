# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_projects, class_name: 'Project', foreign_key: :creator_id

  validates :name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :username, presence: true, uniqueness: true,
    length: { maximum: 100 }
  validates :bio, length: { maximum: 160 }
  validates :url, length: { maximum: 100 }
  validates :location, length: { maximum: 100 }
end
