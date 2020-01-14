class Api::FortunePagesController < ApplicationController
  def random_result_action
    messages = ["You are going to live long.", "You are going to die soon.", "Nobody knows your future."]
    @answer = messages.sample

    render "random_result_view.json.jb"
  end

  def random_numbers_action
    lottery_numbers = (0..60).to_a
    @random_lottery_nums = lottery_numbers.sample(6)

    render "random_numbers_view.json.jb"
  end

  def refresh_count_action
    @count = 0
    @count += 1

    render "refresh_count_view.json.jb"
  end

  def bottles_action
    count = 99
    while count >= 0
      puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
      count -= 1
      puts "Take one down, pass it around. #{count} bottles of beer on the wall."
    end

    render "bottles_view.json.jb"
  end
end
