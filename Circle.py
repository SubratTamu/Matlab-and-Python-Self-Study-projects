import tkinter as Tk
import math


def circle(a, t):
    b = math.sqrt(t*t - a*a)
    return b


def axes(canvas):
    canvas.update()
    x_origin = canvas.winfo_width() /2
    y_origin = canvas.winfo_height() /2
    canvas.configure(scrollregion = (-x_origin,-y_origin,x_origin,y_origin))
    canvas.create_line(-x_origin,0,x_origin,0,fill="Black")
    canvas.create_line(0,y_origin,0,-y_origin,fill="Black")


def draw(canvas,x,y):
    # canvas.create_line(x,y,x+5,y+5,fill ="Red")
    canvas.create_arc(x,y,x+1,y+1,fill="Red")
    canvas.create_oval(x,y,x+1,y+1,outline="blue",width=2)

mainwindow = Tk.Tk()
mainwindow.title("Circle")
mainwindow.geometry("400x400")

screen = Tk.Canvas(mainwindow, width=400, height=400)
screen.grid(row=0, column=0)

axes(screen)
r = 100
for x in range(-100, 100):
    y = circle(x, r)
    draw(screen, x, -y)
    draw(screen, x, y)

mainwindow.update()
mainwindow.minsize(screen.winfo_width(),screen.winfo_height())
mainwindow.maxsize(screen.winfo_width(),screen.winfo_height())
mainwindow.mainloop()
