#!/usr/bin/env python
from BeautifulSoup import BeautifulSoup as bs
import os
import locale
locale.setlocale( locale.LC_ALL, '')
filename = raw_input('Filename? ')

soup = bs(open(filename))

################### CORPORATIONS ###################
total_sum = 0
year = 1998
#print "Summing Corporations"
for corp in soup.findAll('corps'):
  sum = 0
  for id in corp.findChildren():
    if 'foo' not in str(id.string):
      try:
        sum += int(str(id.string).replace('$','').replace(',',''))
      except ValueError as e:
        print str(e) + "\n" + str(id) + " YEAR: " + str(year)
        os.sys.exit(1)
  for years in soup.findAll('year'):
    if years['year'] == str(year):
      years.find('total_corp').string.replaceWith(locale.currency(sum, grouping=True).split('.')[0])
  #print 'Year %s: %s' % (year, locale.currency( sum, grouping=True).split('.')[0])
  total_sum += sum
  year += 2
#print 'Total Career: ', locale.currency(total_sum, grouping=True).split('.')[0]

soup.find('total_corp_all').string.replaceWith(locale.currency( total_sum, grouping=True).split('.')[0])

############### INDUSTRIES ######################
total_sum = 0
year = 1998
#print "Summing Industries"
for indus in soup.findAll('industries'):
  sum = 0
  for id in indus.findChildren():
    if 'foo' not in str(id.string):
      try:
        sum += int(str(id.string).replace('$', '').replace(',',''))
      except ValueError as e:
        print str(e) + "\n" + str(id) + " YEAR: " + str(year)
        os.sys.exit(1)
  for years in soup.findAll('year'):
    if years['year'] == str(year):
      years.find('total_industries').string.replaceWith(locale.currency(sum, grouping=True).split('.')[0])
  #print 'Year %s: %s' % (year, locale.currency(sum, grouping=True).split('.')[0])
  total_sum += sum
  year += 2
#print 'Total Career: ', locale.currency(total_sum, grouping=True).split('.')[0]

soup.find('total_industries_all').string.replaceWith(locale.currency( total_sum, grouping=True).split('.')[0])

#print str(soup)
c = open(filename+'.xml', 'w')
i = open('../indus_by_id/'+filename+'.xml', 'w')
to_write_c = str(soup).replace("""<?xml version='1.0' encoding='utf-8'?>""", """<?xml-stylesheet type="text/xsl" href="corporations.xsl"?>""").replace("??>", "?>")
to_write_i = str(soup).replace("""<?xml version='1.0' encoding='utf-8'?>""", """<?xml-stylesheet type="text/xsl" href="industries.xsl"?>""").replace("??>","?>")

c.write(to_write_c)
c.flush()

i.write(to_write_i)
i.flush()

c.close()
i.close()
print "LINKS"
print "Corps /corp_by_id/"+filename+".xml"
print "Indus /indus_by_id/"+filename+".xml"

os.remove(filename)
