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

# input: 3 floats h, bounce percentage, and window
# output: integer
# alg:
  # check inputs
    # validation method? if false, -1
      # Float parameter "h" in meters must be greater than 0
      # Float parameter "bounce" must be greater than 0 and less than 1
      # Float parameter "window" must be less than h.
  # if valid
    # loop
      # counter = 1
      # if h * bounce is greater than window, add 2
      # increment counter
      # if bounce is less than window, return counter

def bouncingBall(height, bounce, window)
  return -1 if height <= 0 || bounce <= 0 || bounce >= 1 || window >= height
  counter = 1
  loop do
    (height * bounce) > window ? counter += 2 : break
    height *= bounce
  end
  counter
end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
p bouncingBall(1, 0.66, 0.66) == 1
p bouncingBall(1, 0.66, 1) == -1

