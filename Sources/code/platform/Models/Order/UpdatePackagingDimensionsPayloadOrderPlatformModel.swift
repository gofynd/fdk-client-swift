

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UpdatePackagingDimensionsPayload
         Used By: Order
     */

    class UpdatePackagingDimensionsPayload: Codable {
        public var dimension: [Dimension]

        public var currentStatus: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case dimension

            case currentStatus = "current_status"

            case shipmentId = "shipment_id"
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.dimension = dimension

            self.currentStatus = currentStatus

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode([Dimension].self, forKey: .dimension)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

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
        public var dimension: [Dimension]

        public var currentStatus: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case dimension

            case currentStatus = "current_status"

            case shipmentId = "shipment_id"
        }

        public init(currentStatus: String, dimension: [Dimension], shipmentId: String) {
            self.dimension = dimension

            self.currentStatus = currentStatus

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode([Dimension].self, forKey: .dimension)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
