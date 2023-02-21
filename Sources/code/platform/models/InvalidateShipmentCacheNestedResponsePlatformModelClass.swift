

import Foundation
public extension PlatformClient {
    /*
         Model: InvalidateShipmentCacheNestedResponse
         Used By: Order
     */

    class InvalidateShipmentCacheNestedResponse: Codable {
        public var message: String?

        public var shipmentId: String?

        public var error: String?

        public var status: Int?

        public enum CodingKeys: String, CodingKey {
            case message

            case shipmentId = "shipment_id"

            case error

            case status
        }

        public init(error: String? = nil, message: String? = nil, shipmentId: String? = nil, status: Int? = nil) {
            self.message = message

            self.shipmentId = shipmentId

            self.error = error

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

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
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
