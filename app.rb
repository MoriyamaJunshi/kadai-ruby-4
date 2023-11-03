require 'sinatra'

# GETでアクセスされた時にcontact.erbを表示
get '/' do
  erb :contact
end

# POSTでアクセスされた時にcomplete.erbを表示
post '/' do
  @company = params[:company]
  @name = params[:name]
  @email = params[:mail]
  @subject = params[:tel]
  @message = params[:content].gsub(/\r\n|\r|\n/, "<br>") # 改行を<br>タグに置換
  erb :complete
end
