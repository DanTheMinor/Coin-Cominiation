require('sinatra')
require('sinatra/reloader')
require('./lib/coincombination')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @total = params.fetch('amount').to_f
  @total = @total.coin_combination()
  erb(:result)
end
