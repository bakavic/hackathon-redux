class CreateBidSummaries < ActiveRecord::Migration
  def self.up
    create_table :bid_summaries do |t|
      t.primary_key :id
      t.boolean :return_student
      t.boolean :new_student
      t.boolean :open_all
      t.string :faculty
      t.integer :quota
      t.integer :bidders
      t.integer :lowest_bid
      t.integer :highest_bid
      t.integer :winning_bid
      t.string :academic_year
      t.string :round
      t.string :lecture_group
      t.integer :module_code

      t.timestamps
    end
  end

  def self.down
    drop_table :bid_summaries
  end
end
