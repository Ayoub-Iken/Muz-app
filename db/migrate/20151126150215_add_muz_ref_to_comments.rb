class AddMuzRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :muz, index: true, foreign_key: true
  end
end
