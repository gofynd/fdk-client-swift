

import Foundation
public extension PlatformClient {
    /*
         Model: Statuses
         Used By: OrderManage
     */

    class Statuses: Codable {
        public var excludeBagsNextState: String?

        public var status: String

        public var shipments: ShipmentDetail?

        public enum CodingKeys: String, CodingKey {
            case excludeBagsNextState = "exclude_bags_next_state"

            case status

            case shipments
        }

        public init(excludeBagsNextState: String? = nil, shipments: ShipmentDetail? = nil, status: String) {
            self.excludeBagsNextState = excludeBagsNextState

            self.status = status

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                shipments = try container.decode(ShipmentDetail.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
