class Articstbundle < ActiveRecord::Migration[6.1]


  def change
    create_table :billboard do |t|
      #  dont know if we need to change t.text to string or datatype?
      t.text :desc
      t.belongs_to :billboard null:false, foreign_key: true 

      t.timstamps
  end
end
