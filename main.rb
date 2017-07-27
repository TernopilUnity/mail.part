my_mail = "ваш емейл@gmail.com"  #type here your email

puts "Введите пароль от вашей почты "
my_password = STDIN.gets.chomp

puts "Кому отправить письмо ? "
send_to = STDIN.gets.chomp

puts "Что писать в письме ? "
body = STDIN.gets.chomp

Pony.mail(
    {
        :subject => "privet or ruby", #it`s gonna be in the title
        :body => body,
        :to => send_to,
        :from => my_mail,

        :via => :smtp,
        :via_options => {
            :address              => 'smtp.gmail.com',
            :port                 => '587', #gmail port(for other id go https://github.com/benprew/pony)
            :enable_starttls_auto => true,
            :user_name            => my_mail,
            :password             => my_password ,
            :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
        }
    })

puts "Письмо отправлено"
