

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: StatuesRequest1
         Used By: Order
     */
    class StatuesRequest1: Codable {
        public var shipments: [ShipmentsRequest1]?

        public var status: String?

        public var excludeBagsNextState: String?

        public var splitShipment: Bool?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case status

            case excludeBagsNextState = "exclude_bags_next_state"

            case splitShipment = "split_shipment"
        }

        public init(excludeBagsNextState: String? = nil, shipments: [ShipmentsRequest1]? = nil, splitShipment: Bool? = nil, status: String? = nil) {
            self.shipments = shipments

            self.status = status

            self.excludeBagsNextState = excludeBagsNextState

            self.splitShipment = splitShipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([ShipmentsRequest1].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                splitShipment = try container.decode(Bool.self, forKey: .splitShipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)

            try? container.encodeIfPresent(splitShipment, forKey: .splitShipment)
        }
    }
}
