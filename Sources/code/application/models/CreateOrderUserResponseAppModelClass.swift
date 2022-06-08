

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserResponse
         Used By: Payment
     */
    class CreateOrderUserResponse: Codable {
        public var paymentConfirmUrl: String?

        public var orderId: String?

        public var data: CreateOrderUserData

        public var message: String?

        public var callbackUrl: String?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case paymentConfirmUrl = "payment_confirm_url"

            case orderId = "order_id"

            case data

            case message

            case callbackUrl = "callback_url"

            case success
        }

        public init(callbackUrl: String? = nil, data: CreateOrderUserData, message: String? = nil, orderId: String? = nil, paymentConfirmUrl: String? = nil, success: Bool) {
            self.paymentConfirmUrl = paymentConfirmUrl

            self.orderId = orderId

            self.data = data

            self.message = message

            self.callbackUrl = callbackUrl

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            data = try container.decode(CreateOrderUserData.self, forKey: .data)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encode(message, forKey: .message)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
