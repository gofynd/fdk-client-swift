

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UpdatePackagingDimensionsPayload
         Used By: Order
     */

    class UpdatePackagingDimensionsPayload: Codable {
        public var currentStatus: String

        public var dimension: [Dimension]

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case dimension

            case shipmentId = "shipment_id"
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.currentStatus = currentStatus

            self.dimension = dimension

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            dimension = try container.decode([Dimension].self, forKey: .dimension)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UpdatePackagingDimensionsPayload
         Used By: Order
     */

    class UpdatePackagingDimensionsPayload: Codable {
        public var currentStatus: String

        public var dimension: [Dimension]

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case dimension

            case shipmentId = "shipment_id"
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.currentStatus = currentStatus

            self.dimension = dimension

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            dimension = try container.decode([Dimension].self, forKey: .dimension)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
