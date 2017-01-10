class CreateReads < ActiveRecord::Migration[5.0]
  def change
    create_table :reads do |t|
      t.string :url
      t.integer :read_count, default: 0

      t.timestamps
    end
  end
end
