

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ResendOrCancelPaymentRequest
         Used By: Payment
     */

    class ResendOrCancelPaymentRequest: Codable {
        public var deviceId: String?

        public var requestType: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case requestType = "request_type"

            case orderId = "order_id"
        }

        public init(deviceId: String? = nil, orderId: String, requestType: String) {
            self.deviceId = deviceId

            self.requestType = requestType

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            requestType = try container.decode(String.self, forKey: .requestType)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(requestType, forKey: .requestType)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ResendOrCancelPaymentRequest
         Used By: Payment
     */

    class ResendOrCancelPaymentRequest: Codable {
        public var deviceId: String?

        public var requestType: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case requestType = "request_type"

            case orderId = "order_id"
        }

        public init(deviceId: String? = nil, orderId: String, requestType: String) {
            self.deviceId = deviceId

            self.requestType = requestType

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            requestType = try container.decode(String.self, forKey: .requestType)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(requestType, forKey: .requestType)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}