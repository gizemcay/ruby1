class CreateDenes < ActiveRecord::Migration[5.0]
  def change
    create_table :denes do |t|
      t.string :isim
      t.string :soyad
      t.int :yas
      t.text :düşünceler

      t.timestamps
    end
  end
end
