use Rack::Static, 
  :urls => ['public/assets/img', 'public/assets/js', 'public/assets/css'],
  :root => "Clerkships"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/www/index.html', File::RDONLY)
  ]
}