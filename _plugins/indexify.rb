module Jekyll
  module Indexify
    def indexify(input, key)
      hash = {}
      input.each do |item|
        hash[item[key]] = item
      end
      hash
    end
  end
end
Liquid::Template.register_filter(Jekyll::Indexify)
