class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
