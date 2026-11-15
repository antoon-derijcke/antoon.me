//
//  MainLayout.swift
//  AntoonMe
//
//  Created by Antoon Derijcke on 02/11/2026.
//

import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        PlainDocument {
            Head {
                Script(code: """
                {
                  "@context": "https://schema.org",
                  "@type": "Person",
                  "name": "Antoon Derijcke",
                  "url": "\(ExternalLink.website)",
                  "sameAs": [
                    "\(ExternalLink.linkedIn)",
                    "\(ExternalLink.gitHub)",
                    "\(ExternalLink.instagram)",
                    "\(ExternalLink.dansendeBeren)"
                  ]
                }
                """)
                .type(value: "application/ld+json")
            }

            Body {
                NavigationBar(logo: "antoon.") {
                    Link("Home", target: "/")
                    Link("About", target: About())
                }
                .navigationItemAlignment(.trailing)

                Section {
                    content
                }
                .padding(.vertical, .large)

                SiteFooter()
            }
        }
    }
}
