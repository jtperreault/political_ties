# Political Ties

This is a project were are using [Rails](http://rubyonrails.org) to service the public on what's up with the political things are going on in the Traverse City region. For example, who is going to run in the next presidential election? What proposals do you have to vote on in the next election? Who's running for the TCAPS board? This service has you covered. 

## Requirements

Some things you want to have:

### Ruby version: 
`2.2.2 or higher`

### System dependencies: 
* Bundle: `gem install bundler`
* Rails: `gem install rails`
* PostgreSQL: `sudo apt-get install postgresql` OR `sudo dnf install postgresql`

Windows development machines just need to install the [RailsInstaller](http://railsinstlaler.org) application and [PostgreSQL](http://www.postgresql.org).

For macOS machines, install Ruby and PostgreSQL, then run `bundle`.

## Configuration

Once you have those items installed and working on your machine you will want to run the `bundle` command in the application directory to install the necessary Ruby gems, then run `rails server` to start up the [local development server](http://localhost:3000). After that you should be able to see the application running locally by visiting the page locally.

## Database creation

`bin/rails db:create`
If that fails, install PostgreSQL.
