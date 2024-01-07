# Namefeeder

Namefeeder is a work in progress web app which allows rural entrepreneurs to feed their brand names to the market.

## Here are some of the features of the app (Work in progress)

- Merchants should be able to sign up/sign in to the app and build their store and add products
- Customers are able to compare brands/products and order them via the app.
- Admin Panel to manage merchants, customers, products data

## Build the app
- Install Docker
- Clone the app `git clone git@github.com:chamithlkml/namefeeder.git`
- `cd namefeeder`
- `docker compose build`
- `docker compose up -d`
- `docker exec -it app bash` to SSH into app container
- `>> bundle install && rails s -b '0.0.0.0'`
- `docker exec -it app bash` and enter following to start npm dev service
- `>> cd client && npm run dev`
