class CreateOpus < ActiveRecord::Migration[7.0]
  def change
    create_table :opus do |t|
      t.string :opusname
      t.string :description
      t.integer :pointheat
      t.integer :iso
      t.integer :focallength
      t.float :exposure
      t.float :aperture
      t.integer :shutter
      t.timestamps
    end
  end
end
