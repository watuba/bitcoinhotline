class AddTestscoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :testscore, :decimal
  end
end
