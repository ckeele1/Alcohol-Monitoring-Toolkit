# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :client_enrollment do |f|
  f.client_id 1
  f.date_on "2010-07-19 11:45:49"
  f.date_off "2010-07-19 11:45:49"
  f.court_id 1
  f.installation_amount "9.99"
  f.daily_monitoring_amount "9.99"
  f.payment_agreement_amount "9.99"
  f.payment_agreement_terms_id 1
  f.program_status_id 1
end
