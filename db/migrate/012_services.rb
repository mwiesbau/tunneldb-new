class Services < ActiveRecord::Migration
  def self.up
  create_table :services do |t|
  t.string	:name
  t.timestamps
  end
  Service.create :name => "Documentation"
  Service.create :name => "Geological Engineering"
  Service.create :name => "Inspection & Maintenance"
  Service.create :name => "Rehabilitation & Tunnel Widening"
  Service.create :name => "Site Supervision & CM, QA/QC"
  Service.create :name => "Tunnel Design & Specialties"
  Service.create :name => "Waterproofing & Water Control"
  end

  def self.down
  drop_table :service
  end
end
