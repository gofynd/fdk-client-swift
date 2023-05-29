

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestShipmentResponse
         Used By: Order
     */

    class ManifestShipmentResponse: Codable {
        public var shipments: [Shipment1]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case shipments

            case success
        }

        public init(shipments: [Shipment1]? = nil, success: Bool) {
            self.shipments = shipments

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([Shipment1].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestShipmentResponse
         Used By: Order
     */

    class ManifestShipmentResponse: Codable {
        public var shipments: [Shipment1]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case shipments

            case success
        }

        public init(shipments: [Shipment1]? = nil, success: Bool) {
            self.shipments = shipments

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([Shipment1].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
