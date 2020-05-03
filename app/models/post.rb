# == Schema Information
#
# Table name: posts
#
#  id            :bigint           not null, primary key
#  body          :string           not null
#  likes_count   :integer          default(0), not null
#  reposts_count :integer          default(0), not null
#  username      :string           default("user"), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint           not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord
  validates :body, length: {minimum: 1, maximum: 200}

  #
  # Relations
  #
  belongs_to :user
end
