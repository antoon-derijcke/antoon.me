import Foundation
import Ignite

@main
struct AntoonSite: Site {
    var name = "Antoon Derijcke"
    var titleSuffix = " - Antoon Derijcke"
    var url = URL(static: "https://www.antoon.me")
    var description = "Antoon Derijcke: Tracking & Analytics Specialist in Antwerp. Expert in GA4, Snowplow, Piwik Pro, privacy-focused analytics, server-side tracking, debugging analytics for web & apps."
    var language: Language = .english
    var author = "Antoon Derijcke"
    var favicon = URL(string: "/images/favicon.png")
    
    var homePage = Home()
    var layout = MainLayout()
    
    var lightTheme: (any Theme)? = MyLightTheme()
    var darkTheme: (any Theme)? = MyDarkTheme()
    
    var staticPages: [any StaticPage] {
        About()
    }
    
    static func main() async throws {
        var site = AntoonSite()
        try await site.publish()
    }
}
