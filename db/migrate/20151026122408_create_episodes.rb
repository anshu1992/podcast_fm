class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.references :podcast, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :episodes, :podcasts
  end
end
