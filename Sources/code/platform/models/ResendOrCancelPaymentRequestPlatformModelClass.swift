

import Foundation
public extension PlatformClient {
    /*
         Model: ResendOrCancelPaymentRequest
         Used By: Payment
     */

    class ResendOrCancelPaymentRequest: Codable {
        public var requestType: String

        public var orderId: String

        public var deviceId: String?

        public enum CodingKeys: String, CodingKey {
            case requestType = "request_type"

            case orderId = "order_id"

            case deviceId = "device_id"
        }

        public init(deviceId: String? = nil, orderId: String, requestType: String) {
            self.requestType = requestType

            self.orderId = orderId

            self.deviceId = deviceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestType = try container.decode(String.self, forKey: .requestType)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestType, forKey: .requestType)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deviceId, forKey: .deviceId)
        }
    }
}
