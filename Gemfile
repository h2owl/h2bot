# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'ruboty'
gem 'ruboty-slack_rtm', :git => 'git://github.com/h2owl/ruboty-slack_rtm.git',
              		:branch => "fix/bind-before-restart-mainloop"
gem 'ruboty-generator'
gem 'ruboty-fortune'
gem 'ruboty-wikipedia'

group :development, :test do
  gem 'pry-byebug'
end
