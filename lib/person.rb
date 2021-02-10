# your code goes here
require "pry"
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, money = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = money
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        @happiness = happiness
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end
        happy = true
        if happiness > 7
            happy = true
        else
            happy = false
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        #binding.pry
        happiness > 7
    end

    def clean?
        hygiene > 7 
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        elsif topic == "programming"
            "blah blah blah blah blah"
        end

    end
end