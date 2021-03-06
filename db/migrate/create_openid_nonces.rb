class CreateOpenidNonces < ActiveRecord::Migration

  def self.up
    create_table :openid_nonces do |t|
      t.integer   :timestamp
      t.string    :salt
      t.string    :target, :size => 32
      t.text      :server_url
      t.timestamps
    end
    
    add_index :openid_nonces, [:target, :timestamp], :name => 'openid_nonces_existence_lookups'
  end

  def self.down
    drop_table :openid_nonces
  end

end
