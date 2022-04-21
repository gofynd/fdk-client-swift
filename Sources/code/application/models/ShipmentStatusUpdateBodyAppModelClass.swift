

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatusUpdateBody
         Used By: Order
     */
    class ShipmentStatusUpdateBody: Codable {
        public var statuses: [StatusesBody]

        public var forceTransition: Bool

        public enum CodingKeys: String, CodingKey {
            case statuses

            case forceTransition = "force_transition"
        }

        public init(forceTransition: Bool, statuses: [StatusesBody]) {
            self.statuses = statuses

            self.forceTransition = forceTransition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statuses = try container.decode([StatusesBody].self, forKey: .statuses)

            forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statuses, forKey: .statuses)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
        }
    }
}
