#!/usr/bin/env python

from BeautifulSoup import BeautifulStoneSoup as bs
import os, sys, re


corps = ("alliant tech", "at&t", "at&#38;t", "bae\\b", "boeing", "booze", "caci", "california institute of technology", \
	       "computer sciences corporation", "dell\\b", "facebook", "general atomics", "general dynamics", "comcast", \
	       "google", "harris corporation political action committee", "hewlett packard", "hewlett-packard", "ibm", "international business machines", "level 3", \
	       "lockheed", "mantech", "microsoft", "national cable", "northrop", "qualcomm", "qwest", "raytheon", \
	       "saic", "sra international", "unisys", "united technologies", "verizon", "l3", "science application", "treasury")


def find_corp(text):
  for corp in sorted(corps):
    result = re.findall(r"\s"+corp, text, flags=re.IGNORECASE)
    if len(result)>0:
      #print text, result
      return (True, corp)
    else:
      pass
  return (False, None)

f = open(raw_input("FILENAME >>> "))

print "Buffering Beautiful Stone Soup XML"
soup = bs(f)
print "Starting Search"
for transaction in soup.findAll("transaction"):
  employer = transaction.findNext("employer")
  if employer.string != None:
    result = find_corp(employer.string)
    if result[0]:
      print "Match: %s Corp: %s Date: %s Amount: %s" % (result[1], employer.string, employer.findNext("receipt_date").string, employer.findNext("amount").string)
