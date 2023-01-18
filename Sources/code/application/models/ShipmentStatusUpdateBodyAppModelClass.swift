

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatusUpdateBody
         Used By: Order
     */
    class ShipmentStatusUpdateBody: Codable {
        public var forceTransition: Bool?

        public var statuses: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case forceTransition = "force_transition"

            case statuses
        }

        public init(forceTransition: Bool? = nil, statuses: [[String: Any]]) {
            self.forceTransition = forceTransition

            self.statuses = statuses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                forceTransition = try container.decode(Bool.self, forKey: .forceTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statuses = try container.decode([[String: Any]].self, forKey: .statuses)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)

            try? container.encodeIfPresent(statuses, forKey: .statuses)
        }
    }
}
