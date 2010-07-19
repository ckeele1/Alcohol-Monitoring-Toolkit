class CreateClientEnrollments < ActiveRecord::Migration
  def self.up
    create_table :client_enrollments, :force => true do |t|
      t.integer :client_id
      t.datetime :date_on
      t.datetime :date_off
      t.integer :court_id
      t.decimal :installation_amount, :precision => 10, :scale => 2
      t.decimal :daily_monitoring_amount, :precision => 10, :scale => 2
      t.decimal :payment_agreement_amount, :precision => 10, :scale => 2
      t.integer :payment_agreement_terms_id
      t.integer :program_status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :client_enrollments
  end
end
