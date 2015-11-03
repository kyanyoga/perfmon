#!/usr/bin/python
import datetime
from random import randint
from time import sleep
import sys
import os

# pass in the name of the file
outputpath = os.path.normpath(sys.argv[1])

# default sleep time
if (sys.argv[2]):
    sleep_time = sys.argv[2] 
else:
    sleep_time = 5

#run forever
while (True):
    # get start size and time
    start = datetime.datetime.now()
    start_size = os.path.getsize(outputpath)
    
    # Set sleep time
    sleep(float(sleep_time))
    
    # get interval size and time
    end = datetime.datetime.now()
    end_size = os.path.getsize(outputpath)
    
    # calculate size per interval k, m 
    sdiff =  ( end_size - start_size ) / 1024 / 1024 
    tdiff = end - start
    spi = sdiff / tdiff.seconds
    
    #print output --or use logger and log it.
    print ("data size: %s deltaT: %s spi: %s mbs \n") % (sdiff, tdiff, spi)
    
