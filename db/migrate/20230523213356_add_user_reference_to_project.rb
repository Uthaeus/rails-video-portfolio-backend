class AddUserReferenceToProject < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :user, null: false, foreign_key: true
  end
end
