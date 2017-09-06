# Political Ties

This is a project were are using [Rails](http://rubyonrails.org) to service the public on what's up with the political things are going on in the Traverse City region. For example, who is going to run in the next presidential election? What proposals do you have to vote on in the next election? Who's running for the TCAPS board? This service has you covered. 

## Requirements

Some things you want to have:

### Ruby version: 
2.2.2 or higher

For Windows, goto to [RubyInstaller](https://rubyinstaller.org/) to get Ruby.
For macOS, use a third party tool, such as [RVM](http://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv).
For Linux, use your package manager to install Ruby or use the third party tools [RVM](http://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv).

Or you can go ahead and install Ruby from source in which case follow Ruby's documentation.

### System dependencies: 
Once you have Ruby installed, use the `gem` command to install these tools as well:
* Bundle: `gem install bundler`
* Rails: `gem install rails`

Lucky for us, you can't install the database, PostgreSQL, through `gem`.

For Ubuntu and Fedroa Linux, install PostgreSQL through your package manager: `sudo apt-get install postgresql` OR `sudo dnf install postgresql`.
For macOS, you can pick up a PostgreSQL installer from their site.
For Windows, install the [RailsInstaller](http://railsinstlaler.org) application and [PostgreSQL](http://www.postgresql.org).

Or you go ahead and compile each tool by source in which case follow the appropriate documentation for the tool you wish to complie.
## Configuration

Once you have those items installed and working on your machine you will want to run the `bundle` command in the application directory to install the necessary Ruby gems, then run `rails server` to start up the [local development server](http://localhost:3000). After that you should be able to see the application running locally by visiting the page locally.

## Database creation

`bin/rails db:create`
If that fails, install PostgreSQL.
