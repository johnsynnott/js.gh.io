+++
date = "2016-12-06T18:09:09-05:00"
title = "Finding the Best Climate In The United States)"

+++

# What and Why

- What is it that we're looking for?
- Why are we trying to find it?

# Acquiring The Data

Because we're looking for the best place to live in the United States, we're going to use a dataset provided by the government of the United States. The National Oceanic and Atmospheric Administration's Global Historical Climatology Network Daily dataset, or NOAA GHCND for merciful brevity. 

TODO: provide links to the datasets.

TODO: talk about extracting the data.

# Understanding The Structure

TODO Lets have a look at a file. wtf?

TODO link to the readme, and explain that the data is actually well structured.

TODO python code for parsing a file, a line, etc.

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

