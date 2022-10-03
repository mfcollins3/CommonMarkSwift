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

import CommonMarkSwift
import Nimble
import Quick

final class MarkdownToHTMLSpec: QuickSpec {
	override func spec() {
		describe("String") {
			describe("markdownToHTML(options:)") {
				it("renders unformatted text") {
					let text = "Hello, World!"

					let html = text.markdownToHTML()

					expect(html).to(equal("<p>Hello, World!</p>"))
				}

				it("renders emphasized text") {
					let text = "Hello, _World_!"

					let html = text.markdownToHTML()

					expect(html).to(equal("<p>Hello, <em>World</em>!</p>"))
				}

				it("renders data-sourcepos attributes") {
					let text = "Hello, World!"

					let html = text.markdownToHTML(options: .sourcePosition)

					expect(html).to(equal(
						"<p data-sourcepos=\"1:1-1:13\">Hello, World!</p>"
					))
				}
			}
		}
	}
}
