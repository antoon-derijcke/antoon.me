//
//  ExternalLinkStyle.swift
//  AntoonMe
//

import Ignite

extension Link {
    /// Opens the link in a new tab without leaking the opener or referrer.
    func opensExternally() -> some InlineElement {
        self
            .target(.blank)
            .relationship(.noOpener, .noReferrer)
    }
}
