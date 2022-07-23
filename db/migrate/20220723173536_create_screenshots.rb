class CreateScreenshots < ActiveRecord::Migration[6.1]
  def change
    create_table :screenshots do |t|
      t.belongs_to :character
      t.timestamps
    end
  end
end
