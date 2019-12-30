# Cucumber JS Transactional Tests Example

Rails 5.1+ "safely" shares the database connection between the app and test threads.
This example app shows basic configuration that allows to run Cucumber JS scenarios within transaction

### Installation

```
git clone https://github.com/Hirurg103/cucumber_js_transactional_tests_example.git
cd cucumber_js_transactional_tests_example
bundle
DBMS=mysql bundle exec rake db:create && bundle exec rake db:migrate
```

### Running tests

```
DBMS=mysql JS_DRIVER=selenium bundle exec cucumber
```

Possible values for `DBMS`:
* mysql
* postgresql

Possible values for `JS_DRIVER`:
* selenium
* selenium_headless
* selenium_chrome
* selenium_chrome_headless
