
#google.py by Mac Henni
#use it, sell it, wtf you want it!
#(In other words, this is CC-BY 0-licenced.)
# Opens Google in your default browser. Seems like it's just Google for me.
#Used a async, which is actually cool!
import webbrowser
import asyncio
amba = "y"
async def lookup():
    google = "https://www.google.com/search?q="
    url = google + input("what to search ")
    webbrowser.open(url,2)
while amba == "y":
    asyncio.run(lookup())
    amba = input("run again? y if so, enter if not ")
  #for debug
  #  if amba != "y":
      #  print(amba)
    #if you so insist:
    #(c)2022 Mac Henni. No rights reserved at all. :)
    #Love it all!

