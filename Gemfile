source 'https://rubygems.org'
ruby '2.4.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'jbuilder'
gem 'pg'
gem 'pry-inline'
gem 'pry-rails'
gem 'puma'
gem 'rails'

group :development do
  gem 'spring'
end
