# Private Events

This is a site similar to Eventbrite which allows users to create events and then manage user signups. A user can create events. A user can attend many events. An event can be attended by many users. The events are divided into upcoming and past events using scoping and you can easily attend as well as cancel attending it.

## To get started

1. Clone this repository on your local machine and `cd` into the private-only directory
```
$ git clone https://github.com/Leon-Mbegera/private-events
$ cd private-events
```
2. Install required gem files, excluding gem to run production. 
`$ bundle install --without production`

3. Create the database
`rails db:create`

4. Migrate the database with:
`$ rails db:migrate`

5. To run the project on local server do: 
`$ rails server`

6. In your browser, go to
`http://localhost:3000`

## Deploying
- To deploy this private events application, you’ll need to create a new Heroku application, switch to the right branch, push up the source, run the migrations, and seed the database with sample users:

```
$ heroku create
$ git checkout updating-users
$ git push heroku updating-users:master
$ heroku run rails db:migrate
$ heroku run rails db:seed
```

- Visiting the URL returned by the original heroku create should now show you the private-events application running in production.

## Author

👤 **Leon**

- GitHub: [github](https://github.com/Leon-Mbegera)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/leon-mbegera)