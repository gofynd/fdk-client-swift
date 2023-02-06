

import Foundation
public extension PlatformClient {
    /*
         Model: AnnouncementsResponse
         Used By: OrderManage
     */

    class AnnouncementsResponse: Codable {
        public var announcements: [AnnouncementResponse]?

        public enum CodingKeys: String, CodingKey {
            case announcements
        }

        public init(announcements: [AnnouncementResponse]? = nil) {
            self.announcements = announcements
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                announcements = try container.decode([AnnouncementResponse].self, forKey: .announcements)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(announcements, forKey: .announcements)
        }
    }
}
