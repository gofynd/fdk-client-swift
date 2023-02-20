

import Foundation
public extension ApplicationClient {
    /*
         Model: ResponseGetInvoiceShipment
         Used By: Order
     */
    class ResponseGetInvoiceShipment: Codable {
        public var presignedType: String

        public var success: Bool

        public var presignedUrl: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case presignedType = "presigned_type"

            case success

            case presignedUrl = "presigned_url"

            case shipmentId = "shipment_id"
        }

        public init(presignedType: String, presignedUrl: String, shipmentId: String, success: Bool) {
            self.presignedType = presignedType

            self.success = success

            self.presignedUrl = presignedUrl

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            success = try container.decode(Bool.self, forKey: .success)

            presignedUrl = try container.decode(String.self, forKey: .presignedUrl)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedUrl, forKey: .presignedUrl)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
