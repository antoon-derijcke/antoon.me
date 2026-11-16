//
//  SiteFooter.swift
//  AntoonMe
//
//  Created by Antoon Derijcke on 02/11/2026.
//

import Foundation
import Ignite

struct SiteFooter: HTML {
    var body: some HTML {
        Section {
            Divider()
            Text {
                "© \(Calendar.current.component(.year, from: Date())) Antoon Derijcke · "
                Link("LinkedIn", target: ExternalLink.linkedIn)
                    .opensExternally()
                " · "
                Link("GitHub", target: ExternalLink.gitHub)
                    .opensExternally()
                " · "
                Link("Instagram", target: ExternalLink.instagram)
                    .opensExternally()
            }
            .foregroundStyle(.secondary)
            .font(.small)
        }
        .padding(.top, .large)
    }
}
