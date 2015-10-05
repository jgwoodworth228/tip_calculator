class TipCalc

  def initialize(amount, tip, num_people)
    @amount = amount.to_f
    @tip = tip.to_f
    @num_people = num_people.to_i
  end

  def get_bill_amount
    return @amount
  end

  def get_tip
    return @tip
  end

  def get_number_of_people
    return @num_people
  end

  def get_tip_decimal
    return get_tip/100
  end

  def get_tip_amount
    return get_bill_amount*get_tip_decimal
  end

  def get_bill_share
    return get_bill_amount/get_number_of_people
  end

  def get_tip_share
    return get_tip_amount/get_number_of_people
  end

  def get_share_total
    return get_bill_share+get_tip_share
  end

  def get_bill_grand_total
    return get_bill_amount+get_tip_amount
  end
end
