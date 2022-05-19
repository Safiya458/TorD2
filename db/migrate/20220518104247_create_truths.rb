class CreateTruths < ActiveRecord::Migration[7.0]
  def change
    create_table :truths do |t|
      t.text :text

      t.timestamps
    end
  end
end
