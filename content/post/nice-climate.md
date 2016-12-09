+++
date = "2016-12-06T18:09:09-05:00"
title = "Finding the Best Climate (In The United States)"

+++

# What and Why

- What is it that we're looking for?
- Why are we trying to find it?

# Acquiring The Data

Because we're looking for the best place to live in the United States, we're going to use a dataset provided by the government of the United States. The National Oceanic and Atmospheric Administration's Global Historical Climatology Network Daily dataset, or NOAA GHCND for merciful brevity. 

The dataset is available on NOAA's National Climatic Data Center's FTP server [Here](ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd_all.tar.gz). Plese note, this download is pretty large. The archive is 2.8 gigabytes at the time of writing, and once extracted it's about 25 gigabytes worth of text files.

Speaking of extraction, lets pull everything out of that archive. On Linux and similar systems you can run `tar xvfz ghcnd_all.tar.gz`. On Windows, I usually like to use [7-Zip](http://www.7-zip.org/download.html).

# Understanding The Structure

By this point you've probably pried open some of the files to see just what it is that you just spent all that time downloading. The reward for your curiosity was to be greated by a flurry of largely incomprehensible numbers and letters. Don't worry, the information is actually very nicely structured, it's just difficult to read.

Our Rosetta Stone is going to be the [GHCND readme](ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt). Scroll down to section three and you'll find a full explanation of how the data is laid out in each file.

Long story short each line represents a month. The first 21 characters are used to tell us which station it's from, the year and month that it represents, and the type of record that it is (temperature, precipitation, snow depth, etc.). The rest of the line repersents all of the days in the month with eight characters for each one. The first five characters represent the value of that reading, and the last three represent the three different flags the data can have - the M flag, the Q flag, and the S flag. There's a whole that that these flags can mean, so have a look in the readme when you get curious!

TODO python code for parsing the directory, a file, a line, etc.

# Making It Easy To Use

We have all of the data, and we understand how it's structured, but we'll need to get it into a more managable state. Twenty five gigabytes of text files is a bit unweildy to search through.

We'll split this into three steps. First we'll remove any unneeded data, so that we don't have to waste time on what we won't use. Next we'll import the remaining data into an SQL database to make it queryable. Finally, we'll create indexes on what we imported so that any queries we run will complete in a reasonable amount of time.

## Pruning The Data

In order to save time on all future steps, we're going to weed out data that we just don't need. This could be sites that are outside of the US, or data that is flagged as invalid in the readme.

TODO expand on invalid data from the readme

TODO python code excluding invalid data

## Importing Into SQL

TODO Why importing the data is useful

TODO How we'll structure the database, including SQL code

TODO python code for building the insert statments

TODO speeding up the importing with threads

## Creating Indexes

TODO what indexes do

TODO how to create them

TODO the SQL code


# Time To Start Having Fun!

Now that the data is nicely stored and structured, we can (finally) start to play with it! I'll be showing you how to find the areas that would be nice to live in, but keep in mind that you can do with it whatever you like. Poke around, see what you find!

