

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UpdatePackagingDimensionsPayload
         Used By: Order
     */

    class UpdatePackagingDimensionsPayload: Codable {
        public var shipmentId: String

        public var dimension: [Dimension]

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case dimension

            case currentStatus = "current_status"
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.shipmentId = shipmentId

            self.dimension = dimension

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            dimension = try container.decode([Dimension].self, forKey: .dimension)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UpdatePackagingDimensionsPayload
         Used By: Order
     */

    class UpdatePackagingDimensionsPayload: Codable {
        public var shipmentId: String

        public var dimension: [Dimension]

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case dimension

            case currentStatus = "current_status"
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.shipmentId = shipmentId

            self.dimension = dimension

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            dimension = try container.decode([Dimension].self, forKey: .dimension)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
