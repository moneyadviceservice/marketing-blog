Marketing Blog
========================================


What is this?
------------------

The marketing blog application for the Money Advice Service. This an engine-ized fork of [Publify](https://github.com/publify/publify).

Where is the code?
------------------
This is a Rails Engine, so the code lives in `/app` as normal, but that is not
a complete rails project which you can run. As-per the convention, a standard
Rails project is included in `spec/dummy` which then includes the engine.

To setup
--------
NOTE:  Please see the `.ruby-version` file to check which version of ruby this engine should be run upon.

- Clone this git repo to your local machine
- From the project root run `$ bundle install`
- That's it.

To run the tests
----------------
`$ bundle exec rspec` from the root directory

To run the engine on its own in the dummy container we use for engines
-----------------------------------------------------------------------
- `$ cd spec/dummy`
- `$ bundle install`
- `$ bowndler install`
- `$ bundle exec rails s`
- go to `localhost:3000`


To run as installed within the MAS site
----------------------------------------
- Get the lastest version of the [MAS website code](https://github.com/moneyadviceservice/frontend) locally
- Modify the `Gemfile` file in the frontend to point to your local repo of the Blog:

```
#gem 'blog', git: 'git@github.com:moneyadviceservice/marketing-blog.git'
gem 'blog', path: '~/dev/blog' # THIS SHOULD POINT TO THE REPO ON YOUR LOCAL MACHINE
```

- modify the `/config/features.yml` file in the frontend code to contain:

```
features:
  blog: true
```

- Run `$ bundle install` from the frontend root directory
- Run `bundle exec rails s` to start the server (might take a moment)
- Go to `localhost:3000/en/blog` to look at the page in the context of the whole site.

From this point on when you make changes to the engine they should be picked up by the main site running on your local machine.
