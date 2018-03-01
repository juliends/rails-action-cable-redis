class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
