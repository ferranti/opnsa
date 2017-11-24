#!/usr/bin/env python

import urllib2, sys
from BeautifulSoup import BeautifulSoup as bs
from collections import OrderedDict
from collections import defaultdict
corps = ("alliant", "at&t", "at&#38;t", "bae", "boeing", "booze", "caci", "california institute of technology", \
	       "computer sciences corporation", "dell", "facebook", "general atomics", "general dynamics", "comcast", \
	       "google", "harris", "hewlett packard", "ibm", "international business machines", "level 3", \
	       "lockheed", "mantech", "microsoft", "national cable", "northrop", "qualcomm", "qwest", "raytheon", \
	       "saic", "sra international", "unisys", "united technologies", "verizon", "l3", "science application")
def f7(seq):
    seen = set()
    seen_add = seen.add
    return [ x for x in seq if x not in seen and not seen_add(x)]
name = raw_input("FEC ID # ")
if name == "" or name == None:
  sys.exit(1)
  
url = "http://images.nictusa.com/cgi-bin/can_give/%s" % name.strip()

soup = bs(urllib2.urlopen(url))
years = defaultdict(list)
i = 0
for tr in soup.findAll("tr"):    
  for corp in corps:
    td = tr.findNext("td")
    
    if (td.string != None) and (corp in td.string.lower()):
      #print "Match for:", corp
      #print "Name:", td.string
      date = td.findNext("td")
      years[date.string.split("/")[2]].append([corp, date.string, date.findNext("td").string])
      #print "Date:", date.string
      #print "Donation value:", date.findNext("td").string
      i+=1
ordered_years = sorted(years.keys())


			
for year in ordered_years:
  print "{0:40} {1:15} {2:10}".format("--Donor--", "--Date--", "--Value--")
  for donation in years[year]:
      print "{0:40} {1:15} {2:10}".format(donation[0], donation[1], donation[2])
  print
