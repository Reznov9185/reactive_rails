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
require 'rails_helper'


describe Post, type: :model do
  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end

  # Lazily loaded to ensure it's only used when it's needed
  # RSpec tip: Try to avoid @instance_variables if possible. They're slow.
  let(:factory_instance) { build(:post) }
end
