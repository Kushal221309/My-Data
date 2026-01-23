''' What will be the length of following set s: '''

s = set()

s.add(20)
s.add(20.0)   # 20 == 20.0 is True (in py)
s.add("20")

print(s, len(s))
