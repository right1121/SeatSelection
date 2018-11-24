require "csv"

CSV.foreach('db/TicketTypeData.csv') do |info|
  TicketType.create(category: info[0], price: info[1])
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Movie.create(title: 'バック・トゥ・ザ・フューチャー', start_date: '2018-10-19', end_date: '2018-12-19',
            start_time_array: ["10:00", "15:00", "19:00"], screen_time: 3)
Movie.create(title: 'ドラえもん', start_date: '2018-11-23', end_date: '2019-2-14',
            start_time_array: ["8:00", "11:00", "14:00", "18:00"], screen_time: 4)

User.create(email: 'a@a.a', password: '123456', name: 'ドク', sex: '男', age: '65')
User.create(email: 'b@b.b', password: '123456', name: 'マーティ', sex: '男', age: '17')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?