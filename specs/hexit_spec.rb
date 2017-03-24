require 'minitest/autorun'
require 'minitest/reporters'
require 'hexit'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "Hexit class" do

  describe "Initalize Hexit" do
    it "creates instance of Hexit with text and color assignments" do
      text = "A simple test."
      color_array = ["#417369", "#6d706c", "#657465", "#73742e"]
      hexit = Hexit.new(text, color_array)

      hexit.must_be_instance_of Hexit

      hexit.must_respond_to :text
      hexit.text.must_equal text

      hexit.must_respond_to :colors
      hexit.colors.must_equal color_array
    end
  end

  describe "colors_to_text method" do
    text = "A simple test."
    color_array = ["#417369", "#6d706c", "#657465", "#73742e"]
    hexit = Hexit.new(text, color_array)

    it "converts array of hex colors to a string" do
      hexit.colors_to_text.must_equal "Asimpletest."
    end
  end

  describe "text_to_colors method" do
    text = "A simple test."
    color_array = ["#417369", "#6d706c", "#657465", "#73742e"]
    hexit = Hexit.new(text, color_array)

    it "converts string into array of hex colors" do
      hexit.text_to_colors.must_equal color_array
    end
  end

  describe "words_to_colors method" do
    text = "A simple test."
    hexit = Hexit.new(text)

    it "returns array of colors from individual words" do
      hexit.words_to_colors.must_equal ["#65FFFF", "#115105", "#116101"]
    end
  end

end
