class Statement

  def prints
    column_names + first_line
  end

  def column_names
    "date      || credit    || debit    || balance\n"
  end

  def first_line
    "'25-12-16'|| 500.00    ||          || 500.00"
  end

end
