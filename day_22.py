# CREATE A FOOTBALLER CLASS
class Footballer():
    def __init__(self, name, weight):
        self.name = name
        self.weight = weight
        
    # A FOOTBALLER TRAINS
    def train(self):
        print('My name is {}. I am {} pounds and I train in the football pitch!'.format(self.name, self.weight))

# CREATE A BODYBUILDER CLASS
class Bodybuilder():
    def __init__(self, name, weight):
        self.name = name
        self.weight = weight
        
    # A BODYBUILDER ALSO TRAINS
    def train(self):
        print('My name is {}. I am {} pounds and I train in the GYM!'.format(self.name, self.weight))

Kante = Footballer('Kante', 150)
Beast = Bodybuilder('Beast', 200)

# Execute the train method in the Footballer object
print(Kante.train())

# Execute the train method in the Bodybuilder object
print(Beast.train())

# Remember, Bodybuilder and Footballer are two different classes sharing one method name
# Let's show that in a loop
for athlete in [Kante, Beast]:
    print(type(athlete))
    print(athlete.train())

# WE COULD ALSO CREATE A FUNCTION TO EXECUTE THE METHOD FOR EACH OBJECT CALLED ON IT
def train_execute(athlete):
    return athlete.train()

print(train_execute(Kante))
print(train_execute(Beast))