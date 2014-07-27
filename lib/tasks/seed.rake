require './dependencies'
require './main'

namespace :db do
  desc 'Load test data'
  task :seed do
    posts = $db['posts']

    published = { title: 'A published post', body: 'Some test data', published: true }
    not_published =  { title: 'A published post', body: 'Some test data', published: false }

    posts.insert(published)
    posts.insert(not_published)

    puts 'Created posts'
  end
end
