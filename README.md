
Miaowster
=========

#### A social picture sharing site just for cats.

This project started life as a build Instagram challenge using Ruby on Rails which can be found [here.](https://github.com/JonnyPickard/instagram-challenge-rails)

The current version on heroku: [Miaowster](http://miaowster.herokuapp.com)

Installation
------------
##### Requirements

- Ruby/ RVM
- Rails
- Bundler
- ImageMagicks
- postgresql  

##### To Install
1. Open up terminal and clone this repository
2. `cd` into the directory
3. Run `rake db:create`
4. Run `rake db:migrate`
5. Run `rails s`
6. Go to http://localhost:3000 in a browser to view

##### To Test
1. Open up terminal and clone this repository
2. `cd` into the directory
3. Run `rake db:create`
4. Run `rake db:migrate`
5. Run `rspec`

Screenshots
-----------

<img src="https://github.com/JonnyPickard/screenshots/blob/master/miaowster/miaowster_trending.png">

User Stories
------------
```
1.  As a Miaowster user.
    So that I can create an personal Miaowster account.
    I would like a sign up feature.
```
```
2.  As a Miaowster user.
    So that I can use my account.
    I would like a sign in function.
```
```
3.  As a Miaowster user.
    So that I can upload my pictures.
    I would like a upload picture option
```
```
4.  As a Miaowster user.
    So that I can delete my pictures.
    I would like a delete picture option
```
```
5.  As a Miaowster user.
    So that I can update my pictures.
    I would like a update picture option
```
```
6. As a Miaowster user.
   So that I can view my pictures.
   I would like a page to view my pictures.
```
```
7. As a Miaowster user.
   So that I can view other users pictures.
   I would like a page to view all users pictures.
```
```
8.  As a Miaowster user.
    So that I can express my feelings about other users pictures.
    I would like the option to comment on pictures.
```
```
9.  As a Miaowster user.
    So that I can endorse other users pictures that I enjoy,
    I would like an endorse picture option.
```
