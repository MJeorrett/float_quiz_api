task "server" => :environment do
  system 'rails server webrick -p 5000'
end
