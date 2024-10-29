class MainController < ApplicationController
  def root
    render({ :template => "page_templates/root"})
  end
  def roll
    @dice = params["dice"].to_i
    @sides = params["sides"].to_i
    @rolls = []
    @dice.times do
      @rolls.push(rand(1..@sides))
    end
    render({ :template => "page_templates/roll"})
  end
end
