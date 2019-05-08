require 'pry'

class User
  attr_accessor :name, :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name, joke)
    name.learn(joke)
  end

  def joke_by_id(id)
    @jokes.find do |joke|
      id == joke.id
    end
  end

end
