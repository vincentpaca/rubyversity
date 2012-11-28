class Application < Sinatra::Application
  get '/?' do
    haml :index
  end

  get '/assignments/:assignment' do
    post = File.read("#{settings.public_folder}/posts/assignments/#{params[:assignment]}.md")
    haml :assignment, :locals => { :post => post }
  end

  get '/notes/:note' do
    post = File.read("#{settings.public_folder}/posts/notes/#{params[:note]}.md")
    haml :note, :locals => { :post => post }
  end
end
