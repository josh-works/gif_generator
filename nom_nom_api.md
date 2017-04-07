# Consuming APIs

This project is the first time I'm using an API. As part of a tutorial I once sent a tweet from my command line, but I'm not counting that.

We're using Gify's API, which shouldn't be too bad.

I'm going to try a mix of TDD'ing this out, and then a fair amount of "throw stuff at the wall to see what sticks".

If you've never used an API before, and are building a small rails project, this should be a not-complete waste.

That said, I am jotting down notes as I go, and don't really know where I'm going, so if I go down a rabbit-trail in the wrong direction, you're coming with me. Consider yourself warned.

## Goals

- To create gifs via the gify API, and store attributes about these gifs in a local Postgres database. (Most important attribute will be the gifs URL)
- To categorize gifs according to `categories`, which in my mind will function more like `tags`. (I.E. a many-to-many relationship.)
- To TDD this functionality.

## Setup

[this repo](with this branch name) is where I'm starting.
