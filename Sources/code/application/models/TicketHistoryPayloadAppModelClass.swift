

import Foundation
public extension ApplicationClient {
    /*
         Model: TicketHistoryPayload
         Used By: Lead
     */
    class TicketHistoryPayload: Codable {
        public var value: [String: Any]

        public var type: HistoryTypeEnum

        public enum CodingKeys: String, CodingKey {
            case value

            case type
        }

        public init(type: HistoryTypeEnum, value: [String: Any]) {
            self.value = value

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode([String: Any].self, forKey: .value)

            type = try container.decode(HistoryTypeEnum.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
