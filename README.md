# GPS Vehicle

Simple Rails project that accept gps waypoints associated to a vehicle, and then show them in a map.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Installing

```
git clone https://github.com/lazzart/gps_vehicle.git
cd gps_vehicle
bundle install
```

### Setup the db
```
rake db:setup
```

### Running the tests

```
rake test
```

### Run the web server

```
rails s
```

### Run the background job framework

```
bundle exec sidekiq
```

## Built With

* [Ruby on Rails](http://rubyonrails.org/) - Web framework based on Ruby.
* [Sidekiq](https://github.com/mperham/sidekiq/) - Background job framework for Ruby.