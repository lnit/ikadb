heroku pg:reset DATABASE --confirm ikadb
heroku run rake db:create db:migrate db:seed
