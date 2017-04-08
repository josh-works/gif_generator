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

[I'm using this repo](), and all this work will happen on the `consume_gify_api` branch. If you were to check that out and go to the first commit, you should find this article done to right here.

<=

## Tests

To TDD this, we need to be able to check a few things. First, I think, would be to see if we're getting NOT a 404 error when we try to hit the Gify API. [Gify docs](https://github.com/giphy/GiphyAPI)

Pulling from [their search endpoint docs](https://github.com/giphy/GiphyAPI#search-endpoint), it looks like we can ping

`http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC   
`
and get a response. Over to terminal!

(damn, on a train right now, cannot figure this out without wifi)



Stephanie:
