module ReservedSeatsHelper
    def check_reserved_seat(buried_seats_array, i, j)
        check = false
        buried_seats_array.each do |buried_seat|
            if buried_seat == "#{i} #{j}"
                check = true
            end
        end
        check
    end
end
