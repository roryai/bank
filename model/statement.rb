class Statement

  @individual_line_array = []

  def prints
    puts column_names
    multi_line_printer
  end

  def column_names
    "date       || credit    || debit     || balance\n"
  end

  def multi_line_printer
    multi_line_creator.each do |single_line|
      puts single_line.to_s
    end
  end

# ___________________________________________________________________

  def running_total(tran)

  end

  def multi_line_creator
    array = []
    @history.transactions.each do |transaction|
      array << single_line_creator(transaction)
    end
    return array
  end

  def single_line_creator(tran)
    date_interpolator(tran)   + "||" +
    credit_interpolator(tran) + "||" +
    debit_interpolator(tran)  + "||" +
    # Get rid of the space
    " " + running_total(tran) + ".00\n"
  end
# ___________________________________________________________________
  def date_interpolator(tran)
    "#{tran[:date]}" + " "
  end

  def credit_interpolator(tran)
    if tran[:type] == "credit"
      " " + "#{tran[:amount]}.00" + space_calculator(tran[:amount])
    else
      "           "
    end
  end

  def debit_interpolator(tran)
    if tran[:type] == "debit"
      " " + "#{tran[:amount]}.00" + space_calculator(tran[:amount])
    else
      "           "
    end
  end

  def space_calculator(string)
    " " * (7 - string.to_s.length)
  end

end
