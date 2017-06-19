# Canary
Canary Informant allows simple integration of Canary status messages within a Rails app.
Canary Informant assumes you have bootstrap

## Usage
Add the Canary display method to a view, wherever you want the status message to appear (Commonly the application layout file):
> Canary::Flash.display

Create a config/initializers/canary.rb:
> Canary.configure do |config|
>   config.api_url = "http://example.com/api/v1/"
>   config.api_key = "supersecret"
>   config.component_id = "component_id"
> end

You can find your API key from the Cachet dashboard (Team > User Account).
The component_id is the ID of the component that matches the application you wish to show status messages for. The easiest way to find this is by checking the URL when on the edit page for a component: http://example.com/dashboard/components/<component_id>/edit

This assumes a certain use case of Cachet:

  * A Rails application can only have one status message.
  * A Cachet component maps to a Rails Application.
  * The most recent incident created on Cachet with a Status != fixed will be displayed.

The long term plan is to write an application which is better suited and would not have these restrictions.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'canary'
```
