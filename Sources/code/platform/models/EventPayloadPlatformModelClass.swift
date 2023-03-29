

import Foundation
public extension PlatformClient {
    /*
         Model: EventPayload
         Used By: Webhook
     */

    class EventPayload: Codable {
        public var id: Int?

        public var eventTraceId: String?

        public var messageId: String?

        public var eventName: String?

        public var eventType: String?

        public var version: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case eventTraceId = "event_trace_id"

            case messageId = "message_id"

            case eventName = "event_name"

            case eventType = "event_type"

            case version

            case status
        }

        public init(eventName: String? = nil, eventTraceId: String? = nil, eventType: String? = nil, id: Int? = nil, messageId: String? = nil, status: Bool? = nil, version: String? = nil) {
            self.id = id

            self.eventTraceId = eventTraceId

            self.messageId = messageId

            self.eventName = eventName

            self.eventType = eventType

            self.version = version

            self.status = status
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
                eventTraceId = try container.decode(String.self, forKey: .eventTraceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                messageId = try container.decode(String.self, forKey: .messageId)

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
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(eventTraceId, forKey: .eventTraceId)

            try? container.encodeIfPresent(messageId, forKey: .messageId)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
