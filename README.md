[![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

# Hargh

* [Overview](#overview)
* [Design Thoughts](#design-thoughts)
* [Running Locally](#running-locally)
* [License](#license)

## Overview

Hargh allows you to store and query HAR records.
This project is to complete the
[Rigor coding exercise](https://goo.gl/p3b5V1).

## Design Thoughts

### Using Postgres and Building ActiveRecord Models

You'll notice that there are ActiveRecord models that tightly map to
the structure of the HAR spec. This initially felt kind of dangerous
because the HAR really is a spec for a document structure.

What if there was some variation in a browser vendor's HAR output
that couldn't be accomodated by the data model? What if there was a
change in the HAR spec? Let's say HAR 1.3. That led me to think that
perhaps using something like MongoDB and MongoDB that uses documents
natively would make the most sense in the long-term. That may still
be the case long-term.

However in this case, I think AR models work quite well. The schema of
the HAR spec seems remarkably consistent internally so that it's
fairly easy to map to attributes of a model. Furthermore if we
limit this small app to HAR 1.2, then we can essentially count on
those models not changing.

### Query Aggregates

### Data Script

# Running Locally

1. Install the Ruby Version specified in the `.ruby-version` file via
RVM or RBenv

1. Install [PostgreSQL](https://www.postgresapp.com) and have it running

1. Clone the Repo and `cd` into it

1. Install Ruby dependencies via `bundle install`

1. Copy the `.env.example` file to `.env`

1. Set all values in the `.env` file. 

1. Setup the database using `bundle exec rails db:setup`

1. Run the server using `bundle exec rails server`

# Developing Locally

This project relies on the excellent
[Overcommit gem](https://github.com/brigade/overcommit)
that adds Git hooks to run various linters and code checkers.
You'll need to run the following command to make sure
your code complies.

`overcommit --install`

# License

This project is licensed under the [MIT License](./LICENSE.md)
