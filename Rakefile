require_relative 'config/environment.rb'
require 'sinatra/activerecord/rake'

Show.create(name: "show1", network: "network1", day: "tues", rating: 5, season: 3)
Show.create(name: "show2", network: "network1", day: "thurs", rating: 7, season: 2)
Show.create(name: "show3", network: "network2", day: "sun", rating: 8, season: 1)

task :console do
  Pry.start
end
