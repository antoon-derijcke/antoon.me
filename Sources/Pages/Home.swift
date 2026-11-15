//
//  Home.swift
//  AntoonMe
//
//  Created by Antoon Derijcke on 02/11/2026.
//

import Foundation
import Ignite

struct Home: StaticPage {
   var title = "Tracking & Analytics Specialist at DPG Media"
   var description = "Antoon Derijcke: Tracking & Analytics Specialist in Antwerp. Expert in GA4, Snowplow, Piwik Pro, privacy-focused analytics, server-side tracking, and debugging for web & apps."

   var body: some HTML {
       Text("hi, it's antoon.")
           .font(.title1)
           .fontWeight(.bold)

       Text("I'm a Digital Analyst & Tracking Specialist. I specialize in mobile & web tracking, from simple marketing pixels to enterprise-level digital analytics.")
           .font(.lead)

       Text("I have experience in:")
           .font(.title4)
           .padding(.top, .medium)

       List {
           "Web Analytics tools like GA4, Snowplow & Piwik Pro"
           "App Analytics (iOS & Android)"
           "Dashboarding Tools"
           "Analytics Strategy"
           "and more..."
       }

       Link("Let's connect on LinkedIn", target: ExternalLink.linkedIn)
           .linkStyle(.button)
           .role(.primary)
           .target(.blank)
           .relationship(.noOpener, .noReferrer)
           .margin(.top, .medium)
   }
}
