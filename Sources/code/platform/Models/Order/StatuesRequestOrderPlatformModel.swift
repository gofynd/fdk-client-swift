

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StatuesRequest
         Used By: Order
     */

    class StatuesRequest: Codable {
        public var status: String?

        public var shipments: [ShipmentsRequest]?

        public var splitShipment: Bool?

        public var excludeBagsNextState: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case shipments

            case splitShipment = "split_shipment"

            case excludeBagsNextState = "exclude_bags_next_state"
        }

        public init(excludeBagsNextState: String? = nil, shipments: [ShipmentsRequest]? = nil, splitShipment: Bool? = nil, status: String? = nil) {
            self.status = status

            self.shipments = shipments

            self.splitShipment = splitShipment

            self.excludeBagsNextState = excludeBagsNextState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([ShipmentsRequest].self, forKey: .shipments)

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

            do {
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(splitShipment, forKey: .splitShipment)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StatuesRequest
         Used By: Order
     */

    class StatuesRequest: Codable {
        public var status: String?

        public var shipments: [ShipmentsRequest]?

        public var splitShipment: Bool?

        public var excludeBagsNextState: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case shipments

            case splitShipment = "split_shipment"

            case excludeBagsNextState = "exclude_bags_next_state"
        }

        public init(excludeBagsNextState: String? = nil, shipments: [ShipmentsRequest]? = nil, splitShipment: Bool? = nil, status: String? = nil) {
            self.status = status

            self.shipments = shipments

            self.splitShipment = splitShipment

            self.excludeBagsNextState = excludeBagsNextState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([ShipmentsRequest].self, forKey: .shipments)

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

            do {
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(splitShipment, forKey: .splitShipment)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)
        }
    }
}
