

import Foundation
public extension PlatformClient {
    /*
         Model: PageMetaSchema
         Used By: Content
     */

    class PageMetaSchema: Codable {
        public var systemPages: [NavigationSchema]?

        public var customPages: [PageSchema]?

        public var applicationId: String?

        public enum CodingKeys: String, CodingKey {
            case systemPages = "system_pages"

            case customPages = "custom_pages"

            case applicationId = "application_id"
        }

        public init(applicationId: String? = nil, customPages: [PageSchema]? = nil, systemPages: [NavigationSchema]? = nil) {
            self.systemPages = systemPages

            self.customPages = customPages

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                systemPages = try container.decode([NavigationSchema].self, forKey: .systemPages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customPages = try container.decode([PageSchema].self, forKey: .customPages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(systemPages, forKey: .systemPages)

            try? container.encodeIfPresent(customPages, forKey: .customPages)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
