# Happy Puppy Cucumber Tests

Implementation of Cucumber tests for the Happy Puppy application, from Jeff "Cheezy" Morgan's ["Cucumber and Cheese" book](https://leanpub.com/cucumber_and_cheese)

## Running the Tests

The tests can be run through rake:

```
rake features  # all features
rake wip       # only scenarios tagged with @wip
rake specs     # run rspecs
```

The default target is to run all the features against the live application deployed to Heroku (http://puppies.herokuapp.com/).

The environment can be selected using an environment variable:

```
rake ENV=local
```

Or:

```
export ENV=local
rake
```

### Repository Tags

The git repository has been tagged at different points, so that you can see the example evolve:

Tag                 | Implementation
------------------- | ------------------------------------------------------
test-1              | direct browser manipulation
test-2-outline      | test turned into scenario outline
test-3-transform    | test uses a trasform rule
test-4-pageObjects  | steps implemented through Page Objects
test-5-inlineTable  | adoption scenario reimplemented with an inline table
test-6-defaultData  | simplified and abstracted scenarios using Default Data
test-6-random       | randomized scenario data
test-7-externalized | externalized default data using DataMagic
test-8-rndExternal  | randomized externalized default data
test-9-panel        | created reusable panel for error messages
test-10-matcher     | custom matcher used to simplify step definition
test-11-routes      | introduced routes to simplify step definition
test-12-rspec       | created tests using rspec
test-13-figNewton   | externalized configuration parameters
test-14-local       | support for testing against local environment
ch4                 | completed chapter 4
ch5                 | completed chapter 5

### Dependencies

All the gems are installed into ```vendor/bundle``` and checked in (why? This is something I learnt from James Shore -- see [here](http://www.letscodejavascript.com/v3/blog/2014/12/the_reliable_build))

To update the dependencies run:

```
rake bundler
```
