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

final class CMarkVersionSpec: QuickSpec {
	override func spec() {
		describe("CMarkVersion") {
			let version = CMarkVersion()

			describe("major") {
				it("has the major version number for libcmark") {
					expect(version.major).to(equal(0))
				}
			}

			describe("minor") {
				it("has the minor version number for libcmark") {
					expect(version.minor).to(equal(30))
				}
			}

			describe("patch") {
				it("has the patch version number for libcmark") {
					expect(version.patch).to(equal(2))
				}
			}

			describe("description") {
				it("has the libcmark version number") {
					expect(version.description).to(equal("0.30.2"))
				}
			}

			describe("debugDescription") {
				it("has the libcmark version number") {
					expect(version.debugDescription).to(equal("0.30.2"))
				}
			}
		}
	}
}
