class AddUserRefToMuzs < ActiveRecord::Migration
  def change
    add_reference :muzs, :user, index: true, foreign_key: true
  end
end
