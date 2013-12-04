#tip calculator in python
#example of python code

print "Welcome to tip calculator"
print ""
people = raw_input("How many people are you dining with? >")
if people <= 5:
	print "Only " + people + " people.  You don't have very many friends!"
elif people >= 5:
	print "That's a lot of friends!"
total = raw_input("What is the total cost of your meal? >")
# add if statement commenting on cost
percent = raw_input("What percent would you like to tip? >")
#add comment about percent
tip = float(percent) / 100
#print "So, $" +total + " plus a tip of $" + tip + "divided by " + people + "people."
subtotal = float(tip) = float(total)
print "Subtotal =" + subtotal
per_person = float(subtotal) / people
print "Per person that would be $" + per_person
