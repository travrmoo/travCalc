# travCalc

I followed the Code With Cal tutorial @ https://www.youtube.com/watch?v=A2gGNTKo_q8 to build this app. I used this as a learning experience
on how to work with storyboards. I learned how to manipulate stacks and how to use autolayout constraints for proper formatting.

I decided to not use this tutorials validation method, and have devised my own that removes invalid characters from the results string before 
computing the actual math. This is still a work in progress, but we are making progress.

I have written the code in such a way that the user could input something along the lines of (9+-++8) and the resulting output would be (9+8)
as "+" was the last valid operator input. I currently have this working as intended, but still need to update some operators such as "/"

I also still need to fix instances where a user could input 
multiple decimals into a number such as 9.9.9.9 + 9.
