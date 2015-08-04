class String
  define_method(:sleep_in?) do
    date_array = self.split("/")
    date_day = date_array[1].to_i
    date_month = date_array[0].to_i
    date_year = date_array[2].to_i
    date = Time.new(date_year, date_month, date_day)
    day_of_week = date.wday

    if day_of_week == 1
      day = "Monday"
    elsif day_of_week == 2
      day = "Tuesday"
    elsif day_of_week == 3
      day = "Wednesday"
    elsif day_of_week == 4
      day = "Thursday"
    elsif day_of_week == 5
      day = "Friday"
    elsif day_of_week == 6
      day = "Saturday - sleep in!"
    elsif day_of_week == 0
      day = "Sunday - sleep in!"
    end
  end
end
