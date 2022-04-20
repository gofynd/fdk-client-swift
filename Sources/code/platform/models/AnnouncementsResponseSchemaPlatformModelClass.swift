

import Foundation
public extension PlatformClient {
    /*
         Model: AnnouncementsResponseSchema
         Used By: Content
     */

    class AnnouncementsResponseSchema: Codable {
        public var announcements: [String: [AnnouncementSchema]]?

        public var refreshRate: Int?

        public var refreshPages: [String]?

        public enum CodingKeys: String, CodingKey {
            case announcements

            case refreshRate = "refresh_rate"

            case refreshPages = "refresh_pages"
        }

        public init(announcements: [String: [AnnouncementSchema]]? = nil, refreshPages: [String]? = nil, refreshRate: Int? = nil) {
            self.announcements = announcements

            self.refreshRate = refreshRate

            self.refreshPages = refreshPages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                announcements = try container.decode([String: [AnnouncementSchema]].self, forKey: .announcements)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refreshRate = try container.decode(Int.self, forKey: .refreshRate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refreshPages = try container.decode([String].self, forKey: .refreshPages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(announcements, forKey: .announcements)

            try? container.encodeIfPresent(refreshRate, forKey: .refreshRate)

            try? container.encodeIfPresent(refreshPages, forKey: .refreshPages)
        }
    }
}
