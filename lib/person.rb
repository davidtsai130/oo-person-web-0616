class Person

attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(index)
  if index > 10 
    @happiness = 10
  elsif index < 0
    @happiness = 0
  else
    @happiness = index
  end
end

def hygiene=(index)
  if index > 10
    @hygiene = 10
  elsif index < 0
    @hygiene = 0
  else
    @hygiene = index
  end
end

def happy?
  @happiness > 7 ? true : false
end

def clean?
  @hygiene > 7 ? true : false
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(person)
  self.happiness += 3
  person.happiness += 3
  "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    person.happiness += 1
    "blah blah sun blah rain" 
  else
    "blah blah blah blah blah"
  end
end


end
