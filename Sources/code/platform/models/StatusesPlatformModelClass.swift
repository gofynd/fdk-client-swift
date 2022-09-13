

import Foundation
public extension PlatformClient {
    /*
         Model: Statuses
         Used By: OrderManage
     */

    class Statuses: Codable {
        public var status: String

        public var shipments: ShipmentDetail?

        public var excludeBagsNextState: String

        public enum CodingKeys: String, CodingKey {
            case status

            case shipments

            case excludeBagsNextState = "exclude_bags_next_state"
        }

        public init(excludeBagsNextState: String, shipments: ShipmentDetail? = nil, status: String) {
            self.status = status

            self.shipments = shipments

            self.excludeBagsNextState = excludeBagsNextState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            do {
                shipments = try container.decode(ShipmentDetail.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)
        }
    }
}
