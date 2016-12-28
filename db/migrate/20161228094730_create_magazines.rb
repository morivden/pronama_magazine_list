class CreateMagazines < ActiveRecord::Migration[5.0]
  def change
    create_table :magazines do |t|
      t.string :title
      t.string :origin
      t.string :author
      t.string :circle
      t.string :qualify
      t.string :publication
      t.string :printed
      t.string :another_info

      t.timestamps
    end
  end
end
