class CreateAuthorisations < ActiveRecord::Migration
  def self.up
    create_table :authorisations do |t|
      t.text :public_key
      t.boolean :agent_forwarding
      t.string :source_restriction
      t.string :command_restriction
      t.boolean :x11_forwarding
      t.string :authorised_until
      t.boolean :port_forwarding
      t.string :environment_restriction
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :organisation
      t.string :tty

      t.timestamps
    end
  end

  def self.down
    drop_table :authorisations
  end
end
