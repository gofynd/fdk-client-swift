

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: CartCheckoutResponse
         Used By: PosCart
     */
    class CartCheckoutResponse: Codable {
        public var message: String?

        public var orderId: String?

        public var cart: CheckCart?

        public var callbackUrl: String?

        public var data: [String: Any]?

        public var paymentConfirmUrl: String?

        public var success: Bool?

        public var appInterceptUrl: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case orderId = "order_id"

            case cart

            case callbackUrl = "callback_url"

            case data

            case paymentConfirmUrl = "payment_confirm_url"

            case success

            case appInterceptUrl = "app_intercept_url"
        }

        public init(appInterceptUrl: String? = nil, callbackUrl: String? = nil, cart: CheckCart? = nil, data: [String: Any]? = nil, message: String? = nil, orderId: String? = nil, paymentConfirmUrl: String? = nil, success: Bool? = nil) {
            self.message = message

            self.orderId = orderId

            self.cart = cart

            self.callbackUrl = callbackUrl

            self.data = data

            self.paymentConfirmUrl = paymentConfirmUrl

            self.success = success

            self.appInterceptUrl = appInterceptUrl
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
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(CheckCart.self, forKey: .cart)

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
                data = try container.decode([String: Any].self, forKey: .data)

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

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
        }
    }
}
