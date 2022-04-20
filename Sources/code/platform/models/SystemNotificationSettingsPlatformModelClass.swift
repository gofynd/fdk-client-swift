

import Foundation
public extension PlatformClient {
    /*
         Model: SystemNotificationSettings
         Used By: Communication
     */

    class SystemNotificationSettings: Codable {
        public var sound: Bool?

        public var priority: String?

        public var timeToLive: String?

        public enum CodingKeys: String, CodingKey {
            case sound

            case priority

            case timeToLive = "time_to_live"
        }

        public init(priority: String? = nil, sound: Bool? = nil, timeToLive: String? = nil) {
            self.sound = sound

            self.priority = priority

            self.timeToLive = timeToLive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sound = try container.decode(Bool.self, forKey: .sound)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(String.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeToLive = try container.decode(String.self, forKey: .timeToLive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sound, forKey: .sound)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(timeToLive, forKey: .timeToLive)
        }
    }
}
