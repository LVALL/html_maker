class MakeHtml
  def make_html(content, bypass_html, file_name = 'index.html')
    markup = content.gsub!(/[<>]/, '') if bypass_html == false
    markup = content unless bypass_html == false

    f = File.new("#{Dir.pwd}/#{file_name}", "w+")
    f.puts "<!DOCTYPE html>"
    f.puts "  <head>"
    f.puts "    <meta charset='utf-8'>"
    f.puts "    <title>My Tamago</title>"
    f.puts "  </head>"
    f.puts "  <body>"
    f.puts "    <div>"
    f.puts "      #{markup}"
    f.puts "    </div>"
    f.puts "  </body>"
    f.puts "</html>"
    f.close
  end
end
