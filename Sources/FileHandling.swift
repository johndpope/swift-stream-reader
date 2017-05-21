// Copyright (c) 2017 Hèctor Marquès Ranea
//
// This software contains code derived from:
// http://stackoverflow.com/a/24648951/870560
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

/// File descriptor abstraction.
public protocol FileHandling {
    /// Synchronously reads data up to the specified number of bytes.
    func readData(ofLength length: Int) -> Data
    
    /// Helper for peak reading next line
    func peakReadData(ofLength length: Int) -> Data
    
    /// Moves the file pointer to the specified offset within the file represented by the receiver.
    func seek(toFileOffset offset: UInt64)
    
    /// Disallows further access to the represented file or communications channel
    func closeFile()
}
