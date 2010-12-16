# == Schema Information
# Schema version: 20101215212002
#
# Table name: answers
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  question_id :integer
#  value       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
end
