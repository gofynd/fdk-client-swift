

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentResponseReasons
         Used By: Order
     */

    class ShipmentResponseReasons: Codable {
        public var reasonId: Double?

        public var reason: String?

        public enum CodingKeys: String, CodingKey {
            case reasonId = "reason_id"

            case reason
        }

        public init(reason: String? = nil, reasonId: Double? = nil) {
            self.reasonId = reasonId

            self.reason = reason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasonId = try container.decode(Double.self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasonId, forKey: .reasonId)

            try? container.encodeIfPresent(reason, forKey: .reason)
        }
    }
}
