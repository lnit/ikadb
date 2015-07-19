heroku pg:reset DATABASE --confirm ikadb
heroku run rake db:setup
