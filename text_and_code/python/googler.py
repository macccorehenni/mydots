#tkinter
from colorsys import ONE_THIRD
import tkinter as tk
from turtle import heading
import webbrowser

from construct import Padding
from sqlalchemy import true
def google(what):
    
    #Next three lines actually open Google
    google = "https://www.google.com/search?q="
    url = google + what
    #THIS is where Google opens
    #url= the combined google url which is the base (var google above) with the user input (gotten by input function above)
    webbrowser.open(url,2) 

#set up for the Tkinter window
world = tk.Tk()
world.title("Search with Google")
world.wm_title("Search with Google")
greeting = tk.Label(text="What do you want to search for?",height=10)
greeting.pack()
entry = tk.Entry()
entry.pack()
entry_text = entry.get()
submit = tk.Button(command=lambda: google(entry.get()),text="Google!")
submit.pack()
world.mainloop()

