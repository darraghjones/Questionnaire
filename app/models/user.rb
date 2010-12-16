class User < ActiveRecord::Base
  has_many :answers

  Question.all.each do |q|
    define_method q.code do
      #a = answers.find_by_question_id(q.id)
      a = answers.select {|a| a.question_id == q.id}[0]
      a && a.value || q.default_value
    end
    define_method "#{q.code}=" do |value|
      #a = answers.find_by_question_id(q.id) || answers.new({:question_id => q.id})
      a = answers.select {|a| a.question_id == q.id}[0] 
      if a then a.save
      else
        answers << answers.new(:question_id => q.id, :value  => value)
      end     
    end
  end

end


