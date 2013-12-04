# Example Python code
# Pyglatin

pyg = 'ay'

original = raw_input('Enter a word:')

if len(original) > 0 and original.isalpha():
    print original
    word = original.lower()
    first = word[0]
    print first
    if first == "a" or first == "i" or first == "e" or first == "u" or first == "o":
        new_word = word + pyg
        print new_word
    else:
        new_word = word[1:] + word[0] + pyg
        print new_word
else:
    print 'empty'
