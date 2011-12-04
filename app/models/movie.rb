class Movie < ActiveRecord::Base
  belongs_to :category

  # given a dir path, return a list of movie objects
  def self.unorganized(path)
    Dir.entries(path).reject {|i| i.match(/^\./) }.map { |f|
      Movie.new(:filename=>f, :path=>path)
    }
  end

  def full_path
    File.join(path, filename)
  end
end
# == Schema Information
#
# Table name: movies
#
#  id          :integer         not null, primary key
#  filename    :string(255)
#  path        :string(255)
#  container   :string(255)
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

