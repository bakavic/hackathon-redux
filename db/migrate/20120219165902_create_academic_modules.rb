class CreateAcademicModules < ActiveRecord::Migration
  def self.up
    create_table :academic_modules do |t|
      t.primary_key :id
      t.string :module_name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_modules
  end
end
