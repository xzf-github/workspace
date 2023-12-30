def check(sentence):
    return sentence==sentence[::-1]
print(check('hello'))
print(check('deed'))
print(check('need'))