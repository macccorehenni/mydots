#tkinter
from ast import Str
import tkinter as tk
import webbrowser
def lookup(what):
    #Next three lines actually open Google
    google = "https://www.google.com/search?q="
    url = google + this.what
    #THIS is where Google opens
    #url= the combined google url which is the base (var google above) with the user input (gotten by input function above)
    webbrowser.open(url,2) 
from construct import this
world = tk.Tk()
greeting = tk.Label(text="What do you want to search for?")
greeting.pack()
entry = tk.Entry(width=50)
entry.pack()
submit= tk.Button(lookup(entry.get())
world.mainloop()

