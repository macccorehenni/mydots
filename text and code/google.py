
#
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

