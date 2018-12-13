module ReservedSeatsHelper
    def check_reserved_seat_helper(movie_start_time, i, j)
        check = false
        reserved_seats = movie_start_time.reserved_seats
        if reserved_seats.find_by(seat_number_1: "#{i}-#{j}")\
            || reserved_seats.find_by(seat_number_2: "#{i}-#{j}")\
            || reserved_seats.find_by(seat_number_3: "#{i}-#{j}")\
            || reserved_seats.find_by(seat_number_4: "#{i}-#{j}")\
            || reserved_seats.find_by(seat_number_5: "#{i}-#{j}")
            check = true 
        end
        check
    end
end
