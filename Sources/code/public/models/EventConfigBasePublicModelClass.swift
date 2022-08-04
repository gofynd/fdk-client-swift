

import Foundation
public extension PublicClient {
    /*
         Model: EventConfigBase
         Used By: Webhook
     */

    class EventConfigBase: Codable {
        public var eventName: String?

        public var eventType: String?

        public var eventCategory: String?

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case eventName = "event_name"

            case eventType = "event_type"

            case eventCategory = "event_category"

            case version
        }

        public init(eventCategory: String? = nil, eventName: String? = nil, eventType: String? = nil, version: String? = nil) {
            self.eventName = eventName

            self.eventType = eventType

            self.eventCategory = eventCategory

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventCategory = try container.decode(String.self, forKey: .eventCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
