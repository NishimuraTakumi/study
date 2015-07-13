class InitalApplication < ActiveRecord::Migration
  def change
      create_table :users do |t|
          t.string :uid, limit: 64
          t.string :pwd, limit: 64

          t.timestamps
      end


      create_table :bbs do |t|
          t.integer :writer
          t.string :content

          t.timestamps
      end
  end
end
