#tkinter
from ast import Str
from re import search
import tkinter as tk
import webbrowser
from construct import this
def google(what):
    
    #Next three lines actually open Google
    google = "https://www.google.com/search?q="
    url = google + what
    #THIS is where Google opens
    #url= the combined google url which is the base (var google above) with the user input (gotten by input function above)
    webbrowser.open(url,2) 

world = tk.Tk()
greeting = tk.Label(text="What do you want to search for?")
greeting.pack()
entry = tk.Entry(width=50)
entry.pack()
entry_text = entry.get()
submit = tk.Button(google(entry_text))
submit.pack()
world.mainloop()

