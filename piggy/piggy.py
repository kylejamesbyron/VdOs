#!/usr/bin/python3

import sqlite3
con = sqlite3.connect("tutorial.db")

cur = con.cursor()

cur.execute("CREATE TABLE movie(title, year, score)")


