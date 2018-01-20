# -*-coding:utf-8 -*-
import re, os

strings = "I was a man."

m = re.match(r'was', strings)
print m.group() if m is not None else None

m1 = re.search(r'was', strings)
print m1.group() if m1 is not None else None

os.system('sh ../sh/try.sh')