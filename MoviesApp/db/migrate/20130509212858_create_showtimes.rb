class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.integer :theater_id
      t.string :shown_at
    end
  end
end
