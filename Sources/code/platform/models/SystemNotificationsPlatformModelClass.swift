

import Foundation
public extension PlatformClient {
    /*
         Model: SystemNotifications
         Used By: Communication
     */

    class SystemNotifications: Codable {
        public var items: [SystemNotification]?

        public var lastReadAnchor: Int?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case lastReadAnchor = "last_read_anchor"

            case page
        }

        public init(items: [SystemNotification]? = nil, lastReadAnchor: Int? = nil, page: Page? = nil) {
            self.items = items

            self.lastReadAnchor = lastReadAnchor

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([SystemNotification].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastReadAnchor = try container.decode(Int.self, forKey: .lastReadAnchor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(lastReadAnchor, forKey: .lastReadAnchor)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
