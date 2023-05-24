class AddPublishedToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :published, :integer, default: 0, null: false
  end
end
