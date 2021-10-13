# frozen_string_literal: true

def is_multiple_of_3_or_5?(current_number)
  (current_number % 3).zero? || (current_number % 5).zero? ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  final_sum = 0

  final_number.times do |current_number|
    is_multiple_of_3_or_5?(current_number) == true ? final_sum += current_number : false
  end

  final_sum
end
