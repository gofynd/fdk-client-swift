

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartCheckoutDetailV2Request
         Used By: Cart
     */
    class CartCheckoutDetailV2Request: Codable {
        public var customMeta: [String: Any]?

        public var paymentParams: [String: Any]?

        public var paymentMethods: [PaymentMethod]

        public var cartId: String?

        public var merchantCode: String?

        public var billingAddressId: String?

        public var extraMeta: [String: Any]?

        public var orderingStore: Int?

        public var paymentMode: String

        public var paymentAutoConfirm: Bool?

        public var aggregator: String?

        public var callbackUrl: String?

        public var meta: [String: Any]?

        public var staff: StaffCheckout?

        public var billingAddress: [String: Any]?

        public var paymentIdentifier: String?

        public var addressId: String?

        public var deliveryAddress: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case customMeta = "custom_meta"

            case paymentParams = "payment_params"

            case paymentMethods = "payment_methods"

            case cartId = "cart_id"

            case merchantCode = "merchant_code"

            case billingAddressId = "billing_address_id"

            case extraMeta = "extra_meta"

            case orderingStore = "ordering_store"

            case paymentMode = "payment_mode"

            case paymentAutoConfirm = "payment_auto_confirm"

            case aggregator

            case callbackUrl = "callback_url"

            case meta

            case staff

            case billingAddress = "billing_address"

            case paymentIdentifier = "payment_identifier"

            case addressId = "address_id"

            case deliveryAddress = "delivery_address"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, cartId: String? = nil, customMeta: [String: Any]? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMethods: [PaymentMethod], paymentMode: String, paymentParams: [String: Any]? = nil, staff: StaffCheckout? = nil) {
            self.customMeta = customMeta

            self.paymentParams = paymentParams

            self.paymentMethods = paymentMethods

            self.cartId = cartId

            self.merchantCode = merchantCode

            self.billingAddressId = billingAddressId

            self.extraMeta = extraMeta

            self.orderingStore = orderingStore

            self.paymentMode = paymentMode

            self.paymentAutoConfirm = paymentAutoConfirm

            self.aggregator = aggregator

            self.callbackUrl = callbackUrl

            self.meta = meta

            self.staff = staff

            self.billingAddress = billingAddress

            self.paymentIdentifier = paymentIdentifier

            self.addressId = addressId

            self.deliveryAddress = deliveryAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customMeta = try container.decode([String: Any].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
        }
    }
}
