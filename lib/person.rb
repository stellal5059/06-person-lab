# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    
   def initialize(name)
       @name = name
       @bank_account = 25
       @hygiene = 8
       @happiness = 8
   end
   def happiness=(happy)
       #are they happy?
    #   @happiness= happy
       if @happiness.is_a?(Integer) #looks for happiness level
            if @happiness > 10
            @happiness = 10
            elsif @happiness < 0
            @happiness = 0
            end
        else
            @happiness = happiness
       end
   end  
   def hygiene= (sweet)
       #is there hygiene level greater than 7 
       #@hygiene = sweet
       if @hygiene.is_a?(Integer) #looks for hygiene level
            if @hygiene > 10
            @hygiene=10 #hygiene cannot be greater than 10
            elsif @hygiene < 0
            @hygiene= 0 #hygiene cannot be less than 10
            end
        else
            @hygiene = hygiene
       end
       
   end
   def clean?
       if @hygiene > 7
           true
       else
           false
       end
   end
   def happy?
       if @happiness > 7
           true
       else
           false
       end
   end
  def get_paid(money)
      @bank_account += money
      return "all about the benjamins"
  end
  def take_bath
      self.hygiene += 4 #adding 4 to hygiene
      retun "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
      self.happiness += 2
      self.hygiene -= 3
      return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
      friend.happiness += 3
      self.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(other_person, topic)
      if topic == "politics"
          other_person.happiness -= 2
          self.happiness -= 2
         return 'blah blah partisan blah lobbyist'
      elsif topic == "weather"
          other_person.happiness +=1
          self.happiness += 1
          return 'blah blah sun blah rain'
      else
          return 'blah blah blah blah blah'
      end
  end
   
end