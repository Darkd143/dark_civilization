# display types:
# 0 - no display
# 1 - hh:mm:ss:tt
# 2 - hhmm
# 3 - Week: X, Day: Y
# 4 - [X, Y] hh:mm:ss:tt

# set up storage
data merge storage dark_clock {display:{weeks:"",days:"",hours:"",minutes:"",seconds:"",ticks:""}}



# remove storage
data remove storage dark_clock display