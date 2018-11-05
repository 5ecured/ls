def greetings(a, b)
  "Hello, #{a[0] + ' ' + a[1] + ' ' + a[2]}! Nice to have a #{b[:title] + ' ' + b[:occupation]} with us!"
end


p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
