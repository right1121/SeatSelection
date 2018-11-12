require "csv"

CSV.foreach('db/TicketTypeData.csv') do |info|
  TicketType.create(category: info[0], price: info[1])
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?