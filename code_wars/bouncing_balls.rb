=begin

6 kyu

A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

Example:

- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1
  (Condition 2) not fulfilled).
=end

def bouncing_ball(height, bounce, window)
  return -1 if height <= 0 || bounce <= 0 || bounce >= 1 || window >= height
  passes = 1
  loop do
    height *= bounce
    height > window ? passes += 2 : break
  end
  passes
end

p bouncing_ball(3, 0.66, 1.5) == 3
p bouncing_ball(30, 0.66, 1.5) == 15
p bouncing_ball(30, 0.75, 1.5) == 21
p bouncing_ball(30, 0.4, 10) == 3
p bouncing_ball(40, 1, 10) == -1
p bouncing_ball(-5, 0.66, 1.5) == -1
p bouncing_ball(1, 0.66, 0.66) == 1
p bouncing_ball(1, 0.66, 1) == -1
