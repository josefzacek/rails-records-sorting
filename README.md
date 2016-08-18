## Rails Records Sorting

Live version available at [https://records-sorting.herokuapp.com/](https://records-sorting.herokuapp.com/)

Application allows logged in user to Create, Update, Delete and Reorder records in database using Drag & Drop functionality.

It also shows Bootstrap modal on drag and drop completion

`ruby -v  => ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]`

`rails -v  => Rails 4.2.6`

### Gems used

    gem 'jquery-ui-rails'
    
    gem 'acts_as_list'
    
    gem 'slim', '~> 3.0', '>= 3.0.6'
    
    gem 'bootstrap-sass', '~> 3.3.6'
    
    gem "font-awesome-rails"
    
### Authorization

simple authorization is implemented using
    
```
http_basic_authenticate_with
```
    
### Screenshots
    
![Admin area](https://cloud.githubusercontent.com/assets/2744855/17792452/acf3c932-6598-11e6-9502-15998418b9a2.png)
    
![Record updated modal](https://cloud.githubusercontent.com/assets/2744855/17792485/d565fda4-6598-11e6-9f82-07705525f0f1.png)
