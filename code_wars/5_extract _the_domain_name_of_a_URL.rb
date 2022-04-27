=begin

5 kyu

Write a function that when given a URL as a string, parses out just the
domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"
=end

def domain_name(string)
  results = []
  domain = ''
  string.chars.each do |char|
    results << char
    results = [] if results == 'http://'.chars ||
       results == 'http://www.'.chars ||
       results == 'https://www.'.chars ||
       results == 'https://'.chars ||
       results == 'www.'.chars
  end
  results.each do |char|
    return domain if char == '.'
    domain << char
  end
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"

