# Introduction

This is a simple implementation of the [Google Hybrid strategy](https://github.com/boyvanamstel/omniauth/tree/google-hybrid) I made for Omniauth.

# Prerequisits 

* A domain name
* Webspace attached to the domain name
* Google Account

Notice: testing this will not work on http://localhost:3000, make sure you read the entire setup.

# Setup

## Google

1. First register your domain with Google using their [Manage Domains](https://www.google.com/accounts/ManageDomains) page.
2. Follow all the steps and make sure you verify the domain.
3. In the 'Target URL path prefix:' field enter something like: http://yourdomain.com/openid.
4. Take note of the OAuth consumer key and secret.

## Setting up your /etc/hosts file

As I mentioned before this will not work on http://localhost:3000, but you can get it to work locally through a simple trick.
I'm just going to describe this for OSX/Linux, it works very similar on Windows.

1. Open your /etc/hosts file:

    $ sudo vim /etc/hosts

2. Add a line that points to 127.0.0.1 for the domain you aim to use:

    127.0.0.1 yourdomain.com

3. Save and exit. You'll now be able to reach your local server through http://yourdomain.com:3000.
4. Don't forget to disable this when you're done ;).

## Cloning

1. Clone the repo:
    
    $ git clone git://github.com/boyvanamstel/Google-Hybrid-Omniauth-implementation.git

2. Run bundler:

    $ cd Google-Hybrid-Omniauth-implementation
    $ bundle install

## Adding the consumer key and secret

1. Open omniauth.rb in the initializers folder:

    $ vim config/initializers/omniauth.rb

2. Change the :consumer_key and :consumer_secret to the information Google provider in the first step:

    :consumer_key => '[your key here]',
    :consumer_secret => '[your secret here]'

## Runing the application

1. Open the application's Google Hybrid login url in the browser:

    http://yourdomain.com:3000/auth/google_hybrid

2. Login using your Google credentials and notice it asks for GMail and Google Contacts permissions. Accept to see the rails app dump the token etc. 
