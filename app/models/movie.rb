# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  has_many  :characters, dependent: :destroy

  has_many  :bookmarks, dependent: :destroy

  belongs_to :director
  
  has_many :actors, through: :characters, source: :actor

  has_many :users, through: :bookmarks, source: :user
end
