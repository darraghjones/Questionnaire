class AddDefaultValueToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :default_value, :string
  end

  def self.down
    remove_column :questions, :default_value
  end
end
