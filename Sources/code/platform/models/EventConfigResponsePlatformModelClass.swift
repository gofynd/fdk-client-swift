

import Foundation
public extension PlatformClient {
    /*
         Model: EventConfigResponse
         Used By: Webhook
     */

    class EventConfigResponse: Codable {
        public var eventConfigs: [EventConfig]?

        public enum CodingKeys: String, CodingKey {
            case eventConfigs = "event_configs"
        }

        public init(eventConfigs: [EventConfig]? = nil) {
            self.eventConfigs = eventConfigs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
        }
    }
}
