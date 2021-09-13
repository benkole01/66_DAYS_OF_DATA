class Bodybuilder:
    """
    This builds a bodybuilder class.
    A bodybuilder has a name, weighs certain amount of pounds 
    ,and attends a certain gym.
    """
    def __init__(self, name, weight, gym):
        self.name = name
        self.weight = weight
        self.gym = gym
     
   # a bodybuilder can add, maintain or lose weight 
    def add_lose_weight(self, new_weight):
        added_weight = new_weight - self.weight
        if new_weight>self.weight:
            return f'{self.name} added a weight of {added_weight} pounds.'
        elif new_weight==self.weight:
            return f'{self.name} maintained weight.'
        else:
            return f'{self.name} lost a weight of {added_weight} pounds.'
    
    # This is the string representation of the class
    def __str__(self):
        return f'Name: {self.name} \nWeight:{self.weight} pounds \nGym Attending: {self.gym}'