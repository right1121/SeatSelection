require "csv"

CSV.foreach('db/TicketTypeData.csv') do |info|
  TicketType.create(category: info[0], price: info[1])
end

Movie.create(title: 'バック・トゥ・ザ・フューチャー', start_date: '2018-10-19', end_date: '2018-12-19',
             start_time_array: ["10:00", "15:00", "19:00"], screen_time: 3)

User.create(email: 'a@a.a', password: '123456', name: 'ドク', sex: '男', age: '65')