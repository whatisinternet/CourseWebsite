[![build
Status](https://travis-ci.org/whatisinternet/CourseWebsite.svg?branch=master)](https://travis-ci.org/whatisinternet/CourseWebsite)
[![Code
Climate](https://codeclimate.com/github/whatisinternet/CourseWebsite/badges/gpa.svg)](https://codeclimate.com/github/whatisinternet/CourseWebsite)
[![Test
Coverage](https://codeclimate.com/github/whatisinternet/CourseWebsite/badges/coverage.svg)](https://codeclimate.com/github/whatisinternet/CourseWebsite)

### Deploy
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

### Introduction
----------------
This replaces the current website framework used by Dr. Fan for his various
classes. The current legacy system suffers from being out of date, difficult to
upgrade and requires a large amount of manual work. The new system provides a
simple CRUD solution in a cleaner and more up to date way.

### TODO:
----------------
  - Features
    - Must include:
      - Users with roles -- done
      - Courses -- done
      - Lectures -- done
      - Assignments -- done
      - Assignment questions -- done
      - Administration -- Completed using library (GEM)
      - Static pages -- Completed using pre-built GEM
    - Nice to have:
      - JSONAPI resources

## Usage

1.
  ```
  git clone https://github.com/whatisinternet/CourseWebsite.git
  ```
2.
  ```
  bundle install
  ```
3.
  ```
  rake db:create && rake db:migrate && rake db:seed
  ```
4.
  ```
  rails s
  ```

### Notes:

The seeds file will get you up and going with several classes, assignments,
courses and users so you can try things out quickly.
