class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :fighter1
      t.string :fighter2
      t.string :winner

      t.timestamps
    end
  end
end
