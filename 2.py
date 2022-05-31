import numpy as np
import pandas as pd
import matplotlib as plt
import matplotlib.pyplot as mpl
from mpl_toolkits.mplot3d import axes3d

DF = pd.read_csv("anime.csv")
DF.loc[(DF['Episodes'] == '?'), 'Episodes'] = np.nan
DF.head(10)
print(DF.columns, DF.dtypes)
DF.columns = DF.columns.str.lower()
print("rating:")

print(DF['rating'].describe())

DF['voters'] = DF['voters'].str.replace(',','')
DF['voters'] = DF['voters'].astype(int)
print(DF['voters'].describe())

DF['episodes'] = DF['episodes'].astype(float)
print(DF['episodes'].describe())

genresList = list(DF['genre'].str.split(','))
genres = dict()
listGeneres = sum(genresList, [])
fig, ax = mpl.subplots()
fig.set_figwidth(22)
fig.set_figheight(6)
ax.bar(list(sorted(set(listGeneres))), [listGeneres.count(x) for x in sorted(set(listGeneres))], 1, 50)

fig2, bx = mpl.subplots()
fig2.set_figwidth(40)
fig2.set_figheight(10)

company = dict((x, list(DF['production']).count(x)) for x in set(DF['production']))
sorted_company = sorted(company.items(), key=lambda x: x[1])
print(dict(sorted_company))
bx.bar(dict(sorted_company).keys(), dict(sorted_company).values())
mpl.xticks(rotation=90)

fig3, cx = mpl.subplots()
fig3.set_figwidth(40)
fig3.set_figheight(10)


ep = dict((x, list(DF['episodes'].dropna()).count(x)) for x in set(DF['episodes'].dropna()))
ep_sorted = sorted(ep.items(), key=lambda x: x[0])
print(ep_sorted)
cx.bar(dict(ep_sorted).keys(), dict(ep_sorted).values())