// Copyright 2022 Michael F. Collins, III
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

/// An option that controls how the CommonMark engine parses or renders the
/// Markdown content.
public struct ParserOptions: OptionSet {
	/// The value of the option.
	public let rawValue: Int32

	/// Includes a `data-sourcepos` attribute on all block elements.
	public static let sourcePosition = ParserOptions(rawValue: 1 << 1)

	/// Render `softbreak` elements as hard line breaks.
	public static let hardBreaks = ParserOptions(rawValue: 1 << 2)

	/// Render raw HTML and unsafe links.
	///
	/// By default, links with the following schemes are replaced with a
	/// empty strings:
	///
	/// - `javascript:`
	/// - `vbscript:`
	/// - `file:`
	/// - `data:`
	///
	/// An exception to this rule is when the MIME type for the resource is one
	/// of the following:
	///
	/// - `image/png`
	/// - `image/gif`
	/// - `image/jpeg`
	/// - `image/webp`
	///
	/// Raw HTML is replaced with placeholder HTML comments.
	public static let unsafe = ParserOptions(rawValue: 1 << 17)

	/// Render `softbreak` elements as spaces.
	public static let noBreaks = ParserOptions(rawValue: 1 << 4)

	/// Validate UTF-8 in the input before parsing.
	///
	/// Illegal UTF-8 sequences are replaced with the `U+FFFD` character.
	public static let validateUTF8 = ParserOptions(rawValue: 1 << 9)

	/// Does smart replacement of markup.
	///
	/// When this option is used, the following renderings occur:
	///
	/// - Straight quotes are converted to curly quotes
	/// - `---` are converted to em dashes
	/// - `--` are converted to en dashes
	public static let smart = ParserOptions(rawValue: 1 << 10)

	/// Initializes a `ParserOption` value.
	///
	/// - Parameter rawValue: The value for the option.
	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}
}
