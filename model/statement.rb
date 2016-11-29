class Statement

  def prints
    column_names + first_line
  end

  def column_names
    "date       || credit    || debit     || balance\n"
  end

  def first_line
    date_interpolator   + pipes +
    credit_interpolator + pipes +
    debit_interpolator  + pipes +
    " " + @balance.to_s       + ".00\n"
  end

  def date_interpolator
    "#{@history.transactions[0][:date]}" + " "
  end

  def credit_interpolator
    # p (@history.transactions[0][:amount]).to_s
    if @history.transactions[0][:type] == "credit"
      " " + "#{@history.transactions[0][:amount]}.00" + space_calculator(@history.transactions[0][:amount])
    else
      "           "
    end
  end

  def debit_interpolator
    if @history.transactions[0][:type] == "debit"
      "#{@history.transactions[0][:amount]}.00   "
    else
      "           "
    end
  end

  def pipes
    "||"
  end

  def space_calculator(string)
    p string
    string = string.to_s
    p string
    length = string.length
    p length
    " " * (7 - length)
  end

end
