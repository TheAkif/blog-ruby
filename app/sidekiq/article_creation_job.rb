class ArticleCreationJob
  include Sidekiq::Worker

  def perform(args)
    puts "This article with title '#{args.title}' and body '#{args.body}', is created."
    # Custom logic goes here
  end
end