class Movie < ActiveRecord::Base
  validates_presence_of :name, :year, :synopsis
  validates_uniqueness_of :name


end