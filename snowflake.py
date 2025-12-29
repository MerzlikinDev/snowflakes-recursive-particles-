from turtle import *
speed(0)
def ray_snowflake(size=100, gradus=35, ratio=5, child=2):
  if size <= 5:
    return
  pensize(size // 20)
  pencolor(255 - size * 2, 0,size * 2)
  fd(size)
  backward(size // ratio)
  lt(gradus)
  ray_snowflake(size=size // child, gradus=gradus, ratio=ratio, child=child)
  rt(gradus)
  rt(gradus)
  ray_snowflake(size=size // child, gradus=gradus, ratio=ratio, child=child)
  lt(gradus)
  backward(round(size - size // ratio))
def snowflake(size=100, gradus=35, ratio=5, child=2, number_of_rays=6):

  for i in range(number_of_rays):
    rt(360 // number_of_rays)
    ray_snowflake(size, gradus, ratio, child)

snowflake(size=100, gradus=5, ratio=5, child=2, number_of_rays=6)
