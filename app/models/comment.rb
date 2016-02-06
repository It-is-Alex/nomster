class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

  RATINGS = {
    'one star'    => '1_star',
    'two_stars'   => '2_stars',
    'three_stars' => '3_stars',
    'four_stars'  => '4_stars',
    'five_stars'  => '5_stars',
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

end
