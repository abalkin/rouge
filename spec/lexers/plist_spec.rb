describe Rouge::Lexers::Plist do
  let(:subject) { Rouge::Lexers::Plist.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.pbxproj'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-plist'
      assert_guess :mimetype => 'application/x-plist'
    end

    it 'guesses by source' do
      assert_guess :source => "// !$*UTF8*$!\n{}"
    end
  end
end
