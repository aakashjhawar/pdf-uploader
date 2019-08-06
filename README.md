# README

PDF Uploader web app using the [Ruby on Rails](http://rubyonrails.org) framework. Upload multiple PDFs at the same time. 

### Requirements
* Rails 5.2.2
* Ruby 2.5 
* Sqlite3

### Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org) and [Bundler](http://bundler.io) installed.

```sh
git clone https://github.com/aakashjhawar/pdf-uploader.git #You can also clone your own fork
cd photo-app
bundle install
rails db:create
rails db:create
rails server
```
Your app should now be running on [localhost:3000](http://localhost:3000/).

## Deploying to Heroku

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```

Alternatively, you can deploy your own copy of the app using the web-based flow:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
- [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby)
- [Heroku Ruby Support](https://devcenter.heroku.com/articles/ruby-support)
