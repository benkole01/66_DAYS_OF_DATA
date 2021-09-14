class Athlete:
    """
    This builds a generic class for a given athlete X.
    An athlete has a name and weighs certain amount of pounds.
    """
    def __init__(self, name, initial_weight):
        self.name = name
        self.initial_weight = initial_weight
        print('I AM AN ATHLETE!')
     
   # an athlete can add, maintain or lose weight 
    def add_lose_weight(self, new_weight):
        """This method takes an athlete's new weight, and
        compares it with their initial weight. If the new weight
        is greater than the initial weight, then an athlete is said
        to have added weight. On the flip side, if the new weight
        is less than the initial weight, then an athlete is said
        to have lost weight. Otherwise if the new weight and initial 
        weight are the same, an athlete has maintained weight.
        """
        added_weight = new_weight - self.initial_weight
        if new_weight>self.initial_weight:
            return f'{self.name} added a weight of {added_weight} pounds.'
        elif new_weight==self.initial_weight:
            return f'{self.name} maintained weight.'
        else:
            return f'{self.name} lost a weight of {added_weight} pounds.'
    
    # This is the string representation of the class
    def __str__(self):
        return f'Name: {self.name} \nInitial Weight:{self.initial_weight}'


# THIS FOOTBALLER CLASS ALSO INHERITS FROM THE ATHLETE CLASS
class Footballer(Athlete):
    def __init__(self, name, initial_weight):
        Athlete.__init__(self, name, initial_weight)
        print('I AM A FOOTBALLER!')
        
    # ADD A NEW METHOD TO THE FOOTBALLER CLASS
    # A FOOTBALLER CAN CHANGE CLUB
    def change_club(self):
        print('{} moved to a new club!'.format(self.name))


# THIS BODYBUILDER CLASS INHERITS FROM THE ATHLETE CLASS
class Bodybuilder(Athlete):
    def __init__(self, name, initial_weight):
        Athlete.__init__(self, name, initial_weight)
        print('I AM A BODYBUILDER!')
        
    # OVERWRITE THE ADD_LOSE_WEIGHT METHOD FROM THE ATHLETE CLASS
    # LET THIS METHOD JUST PRINT A STATEMENT
    def add_lose_weight(self, new_weight):
        print(f'{self.name} now weighs {new_weight} pounds.')