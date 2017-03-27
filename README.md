# Instagram

# Synopsis

This project is an Instagram clone created in Ruby on Rails. A user can sign up, log in and upload their photos. Users can comment on their own or others' photos, and delete and edit their own uploads.

# Motivation

It was created as a test of my Ruby on Rails skills, and is my first app using this technology.

# Installation

- Clone this repo
- Run `bundle install` in the root directory
- Run `bin/rake db:create` to create the database
- Run `bin/rake db:migrate` to run the migrations
- Run `bin/rails s` to run the server
- Visit `http://localhost:3000` to view the app in your browser

# Testing

Run `rspec` in your terminal in the project folder

# Technologies

Framework

- Ruby on Rails
- Devise
- Haml
- Paperclip

Database

- Postgresql

Testing

- RSpec
- Capybara
- Database Cleaner
