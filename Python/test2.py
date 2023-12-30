class Vecter3:
    def __init__(self, x=0, y=0, z=0):
        self.X = x
        self.Y = y
        self.Z = z
    def __add__(self, n):
        r = Vecter3()
        r.X = self.X + n.X
        r.Y = self.Y + n.Y
        r.Z = self.Z + n.Z
        return r
    def __sub__(self, n):
        r = Vecter3()
        r.X = self.X - n.X
        r.Y = self.Y - n.Y
        r.Z = self.Z - n.Z
        return r
    def __mul__(self, n):
        r = Vecter3()
        r.X = self.X * n
        r.Y = self.Y * n
        r.Z = self.Z * n
        return r
    def __truediv__(self, n):
        r = Vecter3()
        r.X = self.X / n
        r.Y = self.Y / n
        r.Z = self.Z / n
        return r
    def __floordiv__(self, n):
        r = Vecter3()
        r.X = self.X // n
        r.Y = self.Y // n
        r.Z = self.Z // n
        return r
    def show(self):
        print((self.X, self.Y, self.Z))
v1 = Vecter3(1, 2, 3)
v2 = Vecter3(4, 5, 6)
v3 = v1 + v2
v3.show()
v4 = v1 - v2
v4.show()
v5 = v1 * 3
v5.show()
v6 = v1 / 2
v6.show()