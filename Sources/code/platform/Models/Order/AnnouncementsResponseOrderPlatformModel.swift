

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AnnouncementsResponse
         Used By: Order
     */

    class AnnouncementsResponse: Codable {
        public var success: Bool

        public var message: String

        public var announcements: [AnnouncementResponse]?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case announcements
        }

        public init(announcements: [AnnouncementResponse]? = nil, message: String, success: Bool) {
            self.success = success

            self.message = message

            self.announcements = announcements
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                announcements = try container.decode([AnnouncementResponse].self, forKey: .announcements)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(announcements, forKey: .announcements)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AnnouncementsResponse
         Used By: Order
     */

    class AnnouncementsResponse: Codable {
        public var success: Bool

        public var message: String

        public var announcements: [AnnouncementResponse]?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case announcements
        }

        public init(announcements: [AnnouncementResponse]? = nil, message: String, success: Bool) {
            self.success = success

            self.message = message

            self.announcements = announcements
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                announcements = try container.decode([AnnouncementResponse].self, forKey: .announcements)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(announcements, forKey: .announcements)
        }
    }
}
