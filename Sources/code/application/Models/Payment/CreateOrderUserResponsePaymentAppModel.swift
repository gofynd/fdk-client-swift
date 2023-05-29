

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserResponse
         Used By: Payment
     */
    class CreateOrderUserResponse: Codable {
        public var success: Bool

        public var paymentConfirmUrl: String?

        public var callbackUrl: String?

        public var data: CreateOrderUserData?

        public var orderId: String?

        public var message: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case paymentConfirmUrl = "payment_confirm_url"

            case callbackUrl = "callback_url"

            case data

            case orderId = "order_id"

            case message

            case statusCode = "status_code"
        }

        public init(callbackUrl: String? = nil, data: CreateOrderUserData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int, success: Bool) {
            self.success = success

            self.paymentConfirmUrl = paymentConfirmUrl

            self.callbackUrl = callbackUrl

            self.data = data

            self.orderId = orderId

            self.message = message

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)

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
                data = try container.decode(CreateOrderUserData.self, forKey: .data)

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

            message = try container.decode(String.self, forKey: .message)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
