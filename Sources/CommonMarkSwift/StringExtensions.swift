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

import Foundation
import libcmark

extension String {
	/// Renders a Markdown string to HTML.
	///
	/// `markdownToHTML(options:)` will render the Markdown content in the
	/// `String` and will output the rendered HTML.
	/// 
	/// - Parameter options: Optional options to use to control how the Markdown
	///   content is parsed or rendered.
	/// - Returns: the formatted HTML rendering of the Markdown content.
	public func markdownToHTML(options: ParserOptions = []) -> String {
		let output = cmark_markdown_to_html(self, self.count, options.rawValue)
		let html = String(cString: output!)
		cmark_get_default_mem_allocator().pointee.free(output)
		return html.trimmingCharacters(in: .newlines)
	}
}
