class ConverterController < ApplicationController
  def temperature
    @input = params[:input].to_f
    @first = params[:first]
    @second = params[:second]

    if @first === "f" && @second === "c"
      @output = (@input - 32) * 5/9
    elsif @first === "f" && @second === "k"
      @output = (@input - 32) * 5/9 + 273.15
    elsif @first === "c" && @second === "f"
      @output = @input * 9/5 + 32.0
    elsif @first === "c" && @second === "k"
      @output = @input + 273.15
    elsif @first === "k" && @second === "f"
      @output = (@input - 273.15) * 9/5 + 32
    elsif @first === "k" && @second === "c"
      @output = @input - 273.15
    else
      @output = "\"k,\" \"c,\" or \"f\" please yea thanks"
    end
  end
end
