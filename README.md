## Rails Records Sorting

Live version available at [https://records-sorting.herokuapp.com/](https://records-sorting.herokuapp.com/)

Application allows logged in user to Create, Read, Update, Delete and **Reorder** records in database using Drag & Drop functionality.

It also shows Bootstrap modal on drag and drop completion

`ruby -v  => ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]`

`rails -v  => Rails 4.2.6`

### Gems used

    gem 'jquery-ui-rails'

    gem 'acts_as_list'

    gem 'slim', '~> 3.0', '>= 3.0.6'

    gem 'bootstrap-sass', '~> 3.3.6'

    gem 'font-awesome-rails'

    gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'

### Authorization

simple authorization is implemented using

```
http_basic_authenticate_with
```

### Development setup

**Basic Admin authentication**

[dotenv-rails](https://github.com/bkeepers/dotenv) gem is used to take care of development environment variables, these are used for authentication when used clicks on admin link.

To handle this, create .env file in root directory containing something like

```
ADMIN_USERNAME=admin

ADMIN_PASSWORD=password
```

Once you have app up and running click on admin link and JavaScript pop up will show up asking for username and password.

---
**Database setup**

MySQL database details are also stored using development variables

Add code bellow to .env file and update records to match your MySQL setup

```
DEVELOPMENT_DATABASE_USERNAME=rails_records_sorting

DEVELOPMENT_DATABASE_PASSWORD=rails_records_sorting

DEVELOPMENT_DATABASE_NAME=rails_records_sorting
```

---

**Install all gems needed**

```
bundle install
```

**Migrate database**

```
rake db:migrate
```

**Run application**

```
rails s
```

**Visit application at**

[http://localhost:3000/](http://localhost:3000/)

---

### Screenshots

Basic Admin authentication

![Basic Admin authentication 01](https://user-images.githubusercontent.com/2744855/31307001-63d5d9e6-ab53-11e7-82d7-3b974d7f9207.png)

Admin area

![Admin area](https://cloud.githubusercontent.com/assets/2744855/17792452/acf3c932-6598-11e6-9502-15998418b9a2.png)

Record updated modal

![Record updated modal](https://cloud.githubusercontent.com/assets/2744855/17792485/d565fda4-6598-11e6-9f82-07705525f0f1.png)
