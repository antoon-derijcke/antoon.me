//
//  About.swift
//  AntoonMe
//
//  Created by Antoon Derijcke on 02/11/2026.
//

import Foundation
import Ignite

struct About: StaticPage {
    var title = "About Me"
    var description =
        "Antoon Derijcke is a Tracking Specialist and Digital Analyst with experience on both the client and consulting side, working with major media brands and pioneering innovative solutions in digital analytics."

    var body: some HTML {
        Text("About Me")
            .font(.title1)
            .fontWeight(.bold)

        Text(
            "Hi 👋 I'm Antoon Derijcke, a Tracking & Analytics Specialist from Antwerp, Belgium. I'm well versed in privacy-focused analytics, and implementing user tracking at enterprise scale. Increasingly focused on native iOS development in Swift."
        )
        .font(.lead)

        Text("Experience")
            .font(.title2)
            .padding(.top, .large)

        ForEach(Experience.all) { experience in
            ExperienceItem(experience: experience)
        }

        Text("Let's Connect")
            .font(.title2)
            .padding(.top, .large)

        Text {
            "If you want to stay up to date with my work, be sure to "
            Link("connect on LinkedIn", target: ExternalLink.linkedIn)
                .opensExternally()
            ", or send me an "
            // Hand-rolled equivalent of Ignite's `.privacySensitive(.urlAndDisplay)`, which
            // currently renders malformed HTML. ignite-core.js decodes both values in the browser.
            Link(
                Data("email".utf8).base64EncodedString(),
                target: "#"
            )
            .class("protected-link")
            .data("encoded-url", Data(ExternalLink.email.utf8).base64EncodedString())
            " and I'll be sure to get back to you."
        }
    }
}
