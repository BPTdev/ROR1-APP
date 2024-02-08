# lib/tasks/dev.rake
namespace :dev do
    desc "Run the dev script on a custom port"
    task :start, [:port] => :environment do |t, args|
        port = args[:port] || '5173' # Default to port 5173 if none provided
        ENV['PORT'] = port
        exec "./bin/dev" # Executes the script
    end
end
