Persian Bechasboon
==================

Languages which have connecting characters are not well-supported by many programming libraries.
Persian language is one of them. I try to use prawn as a PDF generator to create a report in pdf format.
But because of above mentioned problem it's failed. So I found arabic-letter-connector
which solve this problem for arabic language. I use this gem and provide Persian bechasboonn gem to add Persian
support when using ruby's libraries like prawn.

Acknowledgment
--------------

Thanks to arabic-letter-connector by (Ahmed Nasser).

Installation
------------

Run:

	gem install persian-bechasboon

Then require it with:

	require 'persian-bechasboon'

Usage
-----

	require 'prawn'
	require 'persian-bechasboon'
	Prawn::Document.generate("persian.pdf") do
		text_direction :rtl
		font("/path/to/persian/font.ttf") do # For example: B Nazanin
			text "درود دنیا".connect_persian_letters
		end
	end

TODO
----

* Using persian fonts which does not contain english characters, like `B Nazanin`, when `prawn` renders pdf file, english alphabets shown as a box.
* Using fonts which contain english chararacters, like `Tahoma`, when `prawn` renders pdf file, because of text direction, english words rendered in right to left direction.
