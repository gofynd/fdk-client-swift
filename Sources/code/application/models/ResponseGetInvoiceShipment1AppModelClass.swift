

import Foundation
public extension ApplicationClient {
    /*
         Model: ResponseGetInvoiceShipment1
         Used By: Order
     */
    class ResponseGetInvoiceShipment1: Codable {
        public var success: Bool

        public var shipmentId: String

        public var presignedUrl: String

        public var presignedType: String

        public enum CodingKeys: String, CodingKey {
            case success

            case shipmentId = "shipment_id"

            case presignedUrl = "presigned_url"

            case presignedType = "presigned_type"
        }

        public init(presignedType: String, presignedUrl: String, shipmentId: String, success: Bool) {
            self.success = success

            self.shipmentId = shipmentId

            self.presignedUrl = presignedUrl

            self.presignedType = presignedType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            presignedUrl = try container.decode(String.self, forKey: .presignedUrl)

            presignedType = try container.decode(String.self, forKey: .presignedType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(presignedUrl, forKey: .presignedUrl)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)
        }
    }
}
