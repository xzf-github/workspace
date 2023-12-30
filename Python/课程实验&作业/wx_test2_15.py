class Car:
    def __init__(self, color, brand, rank, mileage):
        self.color = color#颜色
        self.brand = brand#品牌
        self.rank = rank
        self.mileage = mileage
    def update_mileage(self, new_mileage):
        if self.mileage < new_mileage:
            self.mileage = new_mileage
        else:
            print("Error:新里程小于原里程!")
    def show(self):
        print(f"Color: {self.color}")
        print(f"Brand: {self.brand}")
        print(f"Rank: {self.rank}")
        print(f"Mileage: {self.mileage}")
car1 = Car("Red", "Toyota", "Camry", 10000)
car2 = Car("Blue", "Honda", "Accord", 20000)
car1.update_mileage(15000)
car2.update_mileage(15000)
car1.show()
car2.show()