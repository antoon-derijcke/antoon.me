//
//  Experience.swift
//  AntoonMe
//
//  Created by Antoon Derijcke on 02/11/2026.
//

import Foundation

struct Experience: Sendable {
    let dates: String
    let role: String
    let company: String
    let description: String

    static let all: [Experience] = [
        Experience(
            dates: "June 2023 · Present",
            role: "Tracking & Analytics Specialist",
            company: "DPG Media",
            description:
                "Implementing and maintaining tracking solutions for all DPG Media brands, including the news sites, magazines, and entertainment platforms. Started as an embedded consultant through addData and joined in-house in November 2024."
        ),
        Experience(
            dates: "January 2023 · October 2024",
            role: "Analytics Consultant",
            company: "addData",
            description:
                "Consulting for SMB and enterprise clients, including a long-term placement at DPG Media from June 2023. Provided digital analytics solutions, data visualization, and technical support."
        ),
        Experience(
            dates: "February 2022 · January 2023",
            role: "Analytics Specialist",
            company: "Fightclub",
            description: "Started as an intern, involved in analytics & dashboarding projects, supporting the team in data analysis and visualization."
        ),
    ]
}
