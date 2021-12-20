from tkinter import *

root = Tk()
root.title("Simple_Calculator")

e = Entry(root, width=50, border=5)
e.grid(row=0, column=0, columnspan= 4,padx=10,pady=10)


def press_button(num):
    num1 = e.get()
    e.delete(0,END)
    e.insert(0, str(num1)+str(num))

def clear_button():
    e.delete(0,END)

def add():
    global f_num
    f_num = int(e.get())
    e.delete(0,END)
    global math
    math = "addition"
def minus():
    global f_num
    f_num = int(e.get())
    e.delete(0,END)
    global math
    math = "substraction"
def multiply():
    global f_num
    f_num = int(e.get())
    e.delete(0,END)
    global math
    math = "multiplication"
def devide():
    global f_num
    f_num = int(e.get())
    e.delete(0,END)
    global math
    math = "division"

def equal():
    s_num = int(e.get())
    e.delete(0,END)

    if math == "addition":
        e.insert(0,int(f_num)+int(s_num))
    if math == "multiplication":
        e.insert(0,int(f_num)*int(s_num))
    if math == "substraction":
        e.insert(0,int(f_num)-int(s_num))
    if math == "division":
        try:
            e.insert(0,int(f_num)/int(s_num))
        except:
            e.insert(0,"Invalid operation")

button_1 = Button(root, text="9", command=lambda: press_button(9), padx=40, pady=29).grid(row=1, column=0)
button_2 = Button(root, text="8", command=lambda: press_button(8), padx=40, pady=29).grid(row=1, column=1)
button_3 = Button(root, text="7", command=lambda: press_button(7), padx=40, pady=29).grid(row=1, column=2)
button_4 = Button(root, text="6", command=lambda: press_button(6), padx=40, pady=29).grid(row=2, column=0)
button_5 = Button(root, text="5", command=lambda: press_button(5), padx=40, pady=29).grid(row=2, column=1)
button_6 = Button(root, text="4", command=lambda: press_button(4), padx=40, pady=29).grid(row=2, column=2)
button_7 = Button(root, text="3", command=lambda: press_button(3), padx=40, pady=29).grid(row=3, column=0)
button_8 = Button(root, text="2", command=lambda: press_button(2), padx=40, pady=29).grid(row=3, column=1)
button_9 = Button(root, text="1", command=lambda: press_button(1), padx=40, pady=29).grid(row=3, column=2)
button_0 = Button(root, text="0", command=lambda: press_button(0), padx=40, pady=29).grid(row=4, column=1)
add_button = Button(root, text="+", command=add, padx=40, pady=29).grid(row=1, column=3)
subtract_button = Button(root, text="-", command= minus, padx=40, pady=29).grid(row=2, column=3)
multiply_button = Button(root, text="*", command=multiply, padx=40, pady=29).grid(row=4, column=0)
division_button = Button(root, text="/", command=devide, padx=40, pady=29).grid(row=3, column=3)
equal_button = Button(root, text="=", command=equal, padx=40, pady=29).grid(row=4, column=2)
clear_button = Button(root, text="C", command= clear_button, padx=40, pady=29).grid(row=4, column=3)






root.mainloop()
