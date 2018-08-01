class CreateStaticImages < ActiveRecord::Migration[5.1]
  def change
    create_table :static_images do |t|
      t.text :image

      t.timestamps
    end
  end
end
