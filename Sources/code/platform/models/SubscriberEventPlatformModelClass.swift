import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriberEvent
         Used By: Webhook
     */

    class SubscriberEvent: Codable {
        public var id: Int?

        public var subscriberId: Int?

        public var eventId: Int?

        public var createdDate: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case subscriberId = "subscriber_id"

            case eventId = "event_id"

            case createdDate = "created_date"
        }

        public init(createdDate: String?, eventId: Int?, id: Int?, subscriberId: Int?) {
            self.id = id

            self.subscriberId = subscriberId

            self.eventId = eventId

            self.createdDate = createdDate
        }

        public func duplicate() -> SubscriberEvent {
            let dict = self.dictionary!
            let copy = SubscriberEvent(dictionary: dict)!
            return copy
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
                subscriberId = try container.decode(Int.self, forKey: .subscriberId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventId = try container.decode(Int.self, forKey: .eventId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdDate = try container.decode(String.self, forKey: .createdDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)

            try? container.encodeIfPresent(eventId, forKey: .eventId)

            try? container.encodeIfPresent(createdDate, forKey: .createdDate)
        }
    }
}
