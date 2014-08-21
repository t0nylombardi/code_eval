
def normalize_path(path)
  path.scan(/%(\h\h)/) do |hex, _|
    path = path.gsub(/%#{hex}/, hex.to_i(16).chr)
  end
  path
end

def uris_equal?(string)
  s = string.split(';')
  a, b = [s[0], s[1]].map do |uri|
    match = /^(?<scheme>[^:]+):\/\/
     (?<host>[^:\/]+)
     (:(?<port>\d+)?)?
     (?<path>\/.*)?$/x.match(uri)
    {
      scheme: match[:scheme].downcase,
      host:   match[:host].downcase,
      port:   match[:port] || '80',
      path:   normalize_path(match[:path] || '/'),
    }
  end
  a == b
end

ARGF.each do |line|
  puts (uris_equal?(line) ? 'True' : 'False')
end