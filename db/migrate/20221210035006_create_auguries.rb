class CreateAuguries < ActiveRecord::Migration[6.0]
  def change
    create_table :auguries do |t|
      t.string  :nickname,         null: false
      t.integer :sign,             null: false
      t.date    :birth_id,         null: false

      t.timestamps
    end
  end
end
