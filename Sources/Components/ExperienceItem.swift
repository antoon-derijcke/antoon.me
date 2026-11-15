//
//  ExperienceItem.swift
//  AntoonMe
//
//  Created by Antoon Derijcke on 02/11/2026.
//

import Foundation
import Ignite

struct ExperienceItem: HTML {
    let experience: Experience

    var body: some HTML {
        Section {
            Text(experience.dates)
                .font(.small)
                .foregroundStyle(.secondary)
            Text("\(experience.role) @ \(experience.company)")
                .font(.title4)
            Text(experience.description)
        }
        .padding(.vertical, .small)
    }
}
