class CreatePreterms < ActiveRecord::Migration
  def change
    create_table :preterms do |t|
      t.integer :gestation
      t.string :gender
      t.boolean :steroids
      t.boolean :singleton
      t.boolean :sga
      t.decimal :nec
      t.decimal :survival
      t.decimal :IVH12
      t.decimal :IVH34
      t.decimal :CLD
      t.decimal :IMV
      t.decimal :homeox

      t.timestamps
    end
  end
end
