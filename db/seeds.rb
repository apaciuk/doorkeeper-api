if Doorkeeper::Application.count.zero?
    Doorkeeper::Application.create(name: 'Web Client', redirect_uri: '',scopes: '') 
    Doorkeeper::Application.create(name: 'IOS Client', redirect_uri: '',scopes: '')
    Doorkeeper::Application.create(name: 'Android Client', redirect_uri: '',scopes: '')
    Doorkeeper::Application.create(name: 'React Client', redirect_uri: '',scopes: '')
end

User.first_or_create(
    email: 'xhostcom@gmail.com',
    password: 'password',
    password_confirmation: 'password',
    first_name: 'John',
    last_name: 'Doe',
    role: 1
)

30.times do
Book.create(
    title: Faker::Book.title,
        body: Faker::Lorem.paragraphs(number: 5).join("\r")
    )
end
