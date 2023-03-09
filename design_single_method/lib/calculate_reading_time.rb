def calculate_reading_time(text_size, words_per_min)
   (text_size/words_per_min.to_f).ceil
end 