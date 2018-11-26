<<-INTRO
This is a program used as an example of classes and objects on Codecadamy,
this is handy for knowing how to create, store and recall variables.
Keep this for playing around with.
INTRO


#defines the computer


class Computer
  @@users = {} #builds an empty array
  def initialize(username,password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now #generates a timestamp for current time
    @files[filename] = time
    puts "A new file #{filename},was created on #{time}."
  end
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("Gordon","Ruby!")
