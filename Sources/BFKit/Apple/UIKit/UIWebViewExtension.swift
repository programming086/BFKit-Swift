//
//  UIWebViewExtension.swift
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 - 2017 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import Foundation
import UIKit

// MARK: - UIWebView extension

/// This extesion adds some useful functions to UIWebView.
public extension UIWebView {
    // MARK: - Functions
    
    /// Remove the background shadow of the UIWebView.
    @available(*, deprecated: 3.0, message: "`removeBackgroundShadow` will be removed in BFKit-Swift 3.0.")
    public func removeBackgroundShadow() {
        for i in 0 ..< self.scrollView.subviews.count {
            let singleSubview: UIView = self.scrollView.subviews[i]
            if singleSubview.isKind(of: UIImageView.self) {
                singleSubview.isHidden = true
                singleSubview.removeFromSuperview()
            }
        }
    }
    
    /// Load the requested website.
    ///
    /// - Parameter website: Website to load.
    public func loadWebsite(_ website: String) {
        self.loadRequest(URLRequest(url: URL(string: website)!))
    }
}
