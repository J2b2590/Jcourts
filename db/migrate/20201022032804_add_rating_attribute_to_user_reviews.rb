class AddRatingAttributeToUserReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :user_reviews, :rating, :integer
  end
end
