

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateProcessShipmenstRequestBody
         Used By: Order
     */

    class UpdateProcessShipmenstRequestBody: Codable {
        public var shipmentIds: [String]

        public var expectedStatus: String

        public enum CodingKeys: String, CodingKey {
            case shipmentIds = "shipment_ids"

            case expectedStatus = "expected_status"
        }

        public init(expectedStatus: String, shipmentIds: [String]) {
            self.shipmentIds = shipmentIds

            self.expectedStatus = expectedStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            expectedStatus = try container.decode(String.self, forKey: .expectedStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)

            try? container.encodeIfPresent(expectedStatus, forKey: .expectedStatus)
        }
    }
}
