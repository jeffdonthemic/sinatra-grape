class Example < Grape::API
  prefix 'api'
  version 'v1'
  format :json

  get :hello do
    { hello: 'world' }
  end

  get :posts do
    $db['posts'].find({ published: true }).to_a
  end
end
