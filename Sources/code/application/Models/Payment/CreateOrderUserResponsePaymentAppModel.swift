

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserResponse
         Used By: Payment
     */
    class CreateOrderUserResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public var orderId: String?

        public var callbackUrl: String?

        public var paymentConfirmUrl: String?

        public var message: String

        public var data: CreateOrderUserData?

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case orderId = "order_id"

            case callbackUrl = "callback_url"

            case paymentConfirmUrl = "payment_confirm_url"

            case message

            case data
        }

        public init(callbackUrl: String? = nil, data: CreateOrderUserData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.orderId = orderId

            self.callbackUrl = callbackUrl

            self.paymentConfirmUrl = paymentConfirmUrl

            self.message = message

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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

            do {
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                data = try container.decode(CreateOrderUserData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encode(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
