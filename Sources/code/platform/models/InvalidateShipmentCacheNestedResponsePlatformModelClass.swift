

import Foundation
public extension PlatformClient {
    /*
         Model: InvalidateShipmentCacheNestedResponse
         Used By: OrderManage
     */

    class InvalidateShipmentCacheNestedResponse: Codable {
        public var status: Int?

        public var shipmentId: String?

        public var error: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case shipmentId = "shipment_id"

            case error

            case message
        }

        public init(error: String? = nil, message: String? = nil, shipmentId: String? = nil, status: Int? = nil) {
            self.status = status

            self.shipmentId = shipmentId

            self.error = error

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
