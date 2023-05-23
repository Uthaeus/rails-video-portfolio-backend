class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :subtitle
      t.text :body
      t.string :image
      t.string :video_url

      t.timestamps
    end
  end
end
