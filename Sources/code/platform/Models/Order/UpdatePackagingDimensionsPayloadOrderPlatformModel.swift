

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UpdatePackagingDimensionsPayload
         Used By: Order
     */

    class UpdatePackagingDimensionsPayload: Codable {
        public var currentStatus: String

        public var shipmentId: String

        public var dimension: [Dimension]

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case shipmentId = "shipment_id"

            case dimension
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.currentStatus = currentStatus

            self.shipmentId = shipmentId

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            dimension = try container.decode([Dimension].self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
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

        public var shipmentId: String

        public var dimension: [Dimension]

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case shipmentId = "shipment_id"

            case dimension
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.currentStatus = currentStatus

            self.shipmentId = shipmentId

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            dimension = try container.decode([Dimension].self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
