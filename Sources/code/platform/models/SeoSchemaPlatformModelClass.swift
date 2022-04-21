

import Foundation
public extension PlatformClient {
    /*
         Model: SeoSchema
         Used By: Content
     */

    class SeoSchema: Codable {
        public var app: String?

        public var id: String?

        public var robotsTxt: String?

        public var sitemapEnabled: Bool?

        public var customMetaTags: [CustomMetaTag]?

        public var details: Detail?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case app

            case id = "_id"

            case robotsTxt = "robots_txt"

            case sitemapEnabled = "sitemap_enabled"

            case customMetaTags = "custom_meta_tags"

            case details

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(app: String? = nil, createdAt: String? = nil, customMetaTags: [CustomMetaTag]? = nil, details: Detail? = nil, robotsTxt: String? = nil, sitemapEnabled: Bool? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.app = app

            self.id = id

            self.robotsTxt = robotsTxt

            self.sitemapEnabled = sitemapEnabled

            self.customMetaTags = customMetaTags

            self.details = details

            self.createdAt = createdAt

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                robotsTxt = try container.decode(String.self, forKey: .robotsTxt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sitemapEnabled = try container.decode(Bool.self, forKey: .sitemapEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMetaTags = try container.decode([CustomMetaTag].self, forKey: .customMetaTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode(Detail.self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(robotsTxt, forKey: .robotsTxt)

            try? container.encodeIfPresent(sitemapEnabled, forKey: .sitemapEnabled)

            try? container.encodeIfPresent(customMetaTags, forKey: .customMetaTags)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
