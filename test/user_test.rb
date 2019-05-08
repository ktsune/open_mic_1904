require './lib/user'
require './lib/joke'
require 'minitest/pride'
require 'minitest/autorun'

class UserTest < MiniTest::Test
  # def setup
  #   @sal = User.new("Sal")
  #   @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  #   @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  # end

  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_it_has_attributes
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
    assert_equal [], sal.jokes
  end

  def test_user_learns_jokes
    sal = User.new("Sal")
    ali = User.new("Ali")

    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)

    ali.learn(joke_1)
    ali.learn(joke_2)

    assert_equal [joke_1, joke_2], sal.jokes
    assert_equal [joke_1, joke_2], ali.jokes
  end

  def test_user_can_tell_jokes
    # skip
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)

    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    assert_equal [joke_1, joke_2], ali.jokes
  end

  def test_user_can_tell_joke_by_id
    # skip
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)

    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    ali.learn(joke_1)
    ali.learn(joke_2)

    assert_equal joke_1, ali.joke_by_id(1)
    assert_equal joke_2, ali.joke_by_id(2)

  end
end
