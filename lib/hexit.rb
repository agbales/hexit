class Hexit
  attr_accessor :text, :colors

  def initialize(text='', colors=[])
    @text = text
    @colors= colors
  end

  def text_to_colors
    colors = []
    hex = []

    text = @text.strip.delete(' ')
    text.chars do |c|
      hex << c.unpack('H2')
    end

    hex = hex.join('')
    hex.scan(/.{6}/).each do |color|
      colors << '#' + color
    end

    colors
  end

  def words_to_colors
    colors = []
    text_array = @text.split(' ')
    text_array.each do |word|
      hex = ''
      word_bytes = word.bytes
      word_bytes.each do |bytes|
         hex += bytes.to_s
      end
      while hex.length < 6
        hex += "F"
      end
      colors << "#" + hex.slice(0..5)
    end

    colors
  end

  def colors_to_text
    hex = @colors.each do |color|
      color.strip.sub('#', '')
    end

    text = []

    hex.each do |h|
      text << h.to_s.gsub('#', '')
    end

    output = ''

    text_for_pack = text.join('').scan(/.{2}/)

    text_for_pack.each do |t|
      h = []
      h << t
      output << h.pack('H*')
    end

    output.force_encoding('UTF-8')
  end
end
