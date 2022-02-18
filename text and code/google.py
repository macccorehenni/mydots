
'''google.py by Mac Henni
use it, sell it, wtf you want it!
(In other words, this is CC-BY 0-licenced.)
 Opens Google in your default browser. Seems like it's just Chrome for me.
Used a async, which is actually cool!'''
#importing inmportant stuff
import webbrowser
#allows you to open webpages in default browser
import asyncio
#sets up repeat
#just set amba (the repeat killswitch) to y
#while doesn't run if the condition is false
amba = "y"
async def lookup():
    #Next three lines actually open Google
    google = "https://www.google.com/search?q="
    url = google + input("what to search ")
    #THIS is where Google opens
    #url= the combined google url which is the base (var google above) with the user input (gotten by input function above)
  
    webbrowser.open(url,2)
# you can repeat it, pressing enter is telling the program to quit 
 while amba == "y":
    asyncio.run(lookup())
    amba = input("run again? y if so, enter if not ")
  #for debug
  #  if amba != "y":
      #  print(amba)
    #if you so insist:
    #(c)2022 Mac Henni. No rights reserved at all. :)
    #Love it all!

