#  a place for testing code
percent = raw_input("percent?")
total = raw_input("total?")
tip = float(percent) / 100
print tip
tipped = float(tip) * total
print tipped
final = tipped + total
print final
#print("%.2f" % final)
