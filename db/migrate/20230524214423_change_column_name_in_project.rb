class ChangeColumnNameInProject < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :published, :status
  end
end
