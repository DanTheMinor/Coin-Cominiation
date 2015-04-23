require('sinatra')
require('sinatra/reloader')
require('./lib/coincombination')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do

  @total = params.fetch('amount').coin_combination()
  puts total
  binding.pry
  erb(:result)
end
