class MyFirstJob
  include Sidekiq::Worker

  def perform(name, age)
    puts "I am #{name}, running my first job at #{age}"
    # Custom logic goes here
  end
end