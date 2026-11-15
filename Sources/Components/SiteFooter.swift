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
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                " · "
                Link("GitHub", target: ExternalLink.gitHub)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                " · "
                Link("Instagram", target: ExternalLink.instagram)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
            }
            .foregroundStyle(.secondary)
            .font(.small)
        }
        .padding(.top, .large)
    }
}
