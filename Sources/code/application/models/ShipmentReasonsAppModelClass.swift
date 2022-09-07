

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentReasons
         Used By: Order
     */
    class ShipmentReasons: Codable {
        public var reasons: [Reasons]

        public enum CodingKeys: String, CodingKey {
            case reasons
        }

        public init(reasons: [Reasons]) {
            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reasons = try container.decode([Reasons].self, forKey: .reasons)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
