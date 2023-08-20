# Discussions 
Discuss is a web application built on top of Phoenix Framework for creating, editing, and deleting topics with GitHub authentication via uberAuth. The PostgreSQL database is used to store topics, users, and comments.

## Getting Started: 
Clone the repository: 
```
git clone https://github.com/ZainAsif767/discuss.git

cd discuss
```
To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Features
* Create, Delete, and Edit topics
* User Authentication and Authorization (Github)
* Comments on Topic
* PostgreSQL for DB
* Interactive UI using MaterializeCSS

## Note 
This website uses Web-sockets which are now deprecated in Phoenix 1.7, now LiveViews are used. Some functions or 
comments might not work correctly.

## Contributions
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## Learn more about Phoenix Framework

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
