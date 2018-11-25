require "csv"

CSV.foreach('db/TicketTypeData.csv') do |info|
  TicketType.create(category: info[0], price: info[1])
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Movie.create(title: 'バック・トゥ・ザ・フューチャー', start_date: '2018-10-19', end_date: '2018-12-19',
            start_time_array: ["10:00", "15:00", "19:00"], screen_time: 3)
Movie.create(title: 'ドラえもん', start_date: '2018-11-23', end_date: '2019-2-14',
            start_time_array: ["8:00", "11:00", "14:00", "18:00"], screen_time: 4)

MovieStartTime.create(start_time: "2018-10-24 10:00", movie_id: 1)
MovieStartTime.create(start_time: "2018-10-24 15:00", movie_id: 1)
MovieStartTime.create(start_time: "2018-11-24 11:00", movie_id: 2)
MovieStartTime.create(start_time: "2018-11-24 13:00", movie_id: 2)

User.create(email: 'a@a.a', password: '123456', name: 'ドク', sex: '男', age: '65')
User.create(email: 'b@b.b', password: '123456', name: 'マーティ', sex: '男', age: '17')
User.create(email: 'c@c.c', password: '123456', name: 'ヒルデガルド・フォン・マリーンドルフ', sex: '女', age: '36')

ReservedSeat.create(movie_id: 1, user_id: 1, movie_start_time_id: 1)
ReservedSeat.create(movie_id: 1, user_id: 2, movie_start_time_id: 1)
ReservedSeat.create(movie_id: 1, user_id: 3, movie_start_time_id: 1)
ReservedSeat.create(movie_id: 2, user_id: 1, movie_start_time_id: 3)
ReservedSeat.create(movie_id: 2, user_id: 2, movie_start_time_id: 4)
ReservedSeat.create(movie_id: 2, user_id: 3, movie_start_time_id: 4)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?