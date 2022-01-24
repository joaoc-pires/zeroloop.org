import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct ZeroloopOrg: Website {
    enum SectionID: String, WebsiteSectionID {
        case posts
        case about
        case projects
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://zeroloop.org")!
    var name = "ZeroLoop"
    var description = "Moving, without going anywhere"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try ZeroloopOrg().publish(withTheme: .foundation)
