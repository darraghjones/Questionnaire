# == Schema Information
# Schema version: 20101215212002
#
# Table name: questions
#
#  id            :integer         not null, primary key
#  code          :string(255)
#  text          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  default_value :string(255)
#

class Question < ActiveRecord::Base
end
