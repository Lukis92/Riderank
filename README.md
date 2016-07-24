# Riderank app

Simply app to register own rides between any addresses. Based on your rides app
create week and month statistics about sum of rides, average prices and ride
distances.

## Getting started
To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```
Next, copy database.yml.sample schema to database.yml(if you don't have, just create)
and configure with own PostgreSQL database.

Next, create the database:

```
$ rails db:create
```

Next, migrate the database:

```
$ rails db:migrate
```

Next, seed default data:

```
$ rails db:seed
```

Finally, you can run rails server and see result

```
$ rails s
```

## Information about environment
[ruby] - version 2.3.0
[rails] - version 5.0.0
[PostgreSQL] - version 0.18.4
