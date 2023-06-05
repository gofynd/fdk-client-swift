

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: StatusesBodyResponse
         Used By: Order
     */
    class StatusesBodyResponse: Codable {
        public var shipments: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case shipments
        }

        public init(shipments: [[String: Any]]? = nil) {
            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
