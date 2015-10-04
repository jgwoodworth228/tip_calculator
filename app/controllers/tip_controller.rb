class TipController < ApplicationController
  def form
    render 'form'
  end

  def result
    @amount = params[:amount].to_f
    @tip = params[:tip].to_f
    @num_people = params[:num_people].to_i

    @tip_total = (@amount*(@tip/100)).round(2)
    @tip_share = (@tip_total/@num_people).round(2)
    @bill_share = (@amount/@num_people).round(2)
    @total = (@bill_share + @tip_share).round(2)

    render 'result'
  end
end
