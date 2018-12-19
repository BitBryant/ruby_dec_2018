class SaysController < ApplicationController
  def hello
    render text: 'Hello CodingDojo!'
  end

  def say
    render text: 'Saying Hello!'
  end

  def name
    render text: 'Saying Hello Joe!'
  end

  def restart
    session.clear()
    render text:'Destroyed the session!'
  end

  def times
    session[:times]=0
    print session[:times], "*******************"
    if session.has_key?(:times)
      session[:times] += 1
    else
    session[:times] = 1
    render text:'You have visited this url #{:times} times'
  end

  def root
    render text: 'What do you want me to say???'
  end
end
