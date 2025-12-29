from turtle import *
speed(0)

def hexagon(size=100):
  x = size // 5
  fd(size)
  lt(120)
  fd((size - x) // 2)
  lt(60)
  fd(x)
  rt(120)
  fd(x)
  lt(60)
  fd((size - x) // 2)
  lt(120)
  fd(size)
  lt(120)
  fd(size * 2 // 5)
  lt(120)
  fd(size * 2 // 5)
  lt(120)
  fd(size * 2 // 5)
  lt(150)
  fd(size // 3)
  lt(90)
  circle(size // 3)

  lt(90)
  fd(size // 3)
  lt(180 - 30)
def hexagons(number=6):
  for i in range(number):
    lt(60)
    hexagon()
hexagons()
