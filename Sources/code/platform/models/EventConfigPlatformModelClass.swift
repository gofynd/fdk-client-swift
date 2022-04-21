

import Foundation
public extension PlatformClient {
    /*
         Model: EventConfig
         Used By: Webhook
     */

    class EventConfig: Codable {
        public var id: Int?

        public var eventName: String?

        public var eventType: String?

        public var eventCategory: String?

        public var version: String?

        public var displayName: String?

        public var description: String?

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case eventName = "event_name"

            case eventType = "event_type"

            case eventCategory = "event_category"

            case version

            case displayName = "display_name"

            case description

            case createdOn = "created_on"
        }

        public init(createdOn: String? = nil, description: String? = nil, displayName: String? = nil, eventCategory: String? = nil, eventName: String? = nil, eventType: String? = nil, id: Int? = nil, version: String? = nil) {
            self.id = id

            self.eventName = eventName

            self.eventType = eventType

            self.eventCategory = eventCategory

            self.version = version

            self.displayName = displayName

            self.description = description

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
