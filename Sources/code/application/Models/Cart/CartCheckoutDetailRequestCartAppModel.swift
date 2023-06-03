

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartCheckoutDetailRequest
         Used By: Cart
     */
    class CartCheckoutDetailRequest: Codable {
        public var id: String?

        public var billingAddress: [String: Any]?

        public var staff: StaffCheckout?

        public var aggregator: String?

        public var paymentParams: [String: Any]?

        public var callbackUrl: String?

        public var paymentMode: String

        public var paymentIdentifier: String?

        public var paymentAutoConfirm: Bool?

        public var meta: [String: Any]?

        public var customMeta: [CartCheckoutCustomMeta]?

        public var orderType: String?

        public var merchantCode: String?

        public var extraMeta: [String: Any]?

        public var billingAddressId: String?

        public var deliveryAddress: [String: Any]?

        public var orderingStore: Int?

        public var addressId: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case billingAddress = "billing_address"

            case staff

            case aggregator

            case paymentParams = "payment_params"

            case callbackUrl = "callback_url"

            case paymentMode = "payment_mode"

            case paymentIdentifier = "payment_identifier"

            case paymentAutoConfirm = "payment_auto_confirm"

            case meta

            case customMeta = "custom_meta"

            case orderType = "order_type"

            case merchantCode = "merchant_code"

            case extraMeta = "extra_meta"

            case billingAddressId = "billing_address_id"

            case deliveryAddress = "delivery_address"

            case orderingStore = "ordering_store"

            case addressId = "address_id"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, customMeta: [CartCheckoutCustomMeta]? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, id: String? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String? = nil, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, staff: StaffCheckout? = nil) {
            self.id = id

            self.billingAddress = billingAddress

            self.staff = staff

            self.aggregator = aggregator

            self.paymentParams = paymentParams

            self.callbackUrl = callbackUrl

            self.paymentMode = paymentMode

            self.paymentIdentifier = paymentIdentifier

            self.paymentAutoConfirm = paymentAutoConfirm

            self.meta = meta

            self.customMeta = customMeta

            self.orderType = orderType

            self.merchantCode = merchantCode

            self.extraMeta = extraMeta

            self.billingAddressId = billingAddressId

            self.deliveryAddress = deliveryAddress

            self.orderingStore = orderingStore

            self.addressId = addressId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

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
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)

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
                customMeta = try container.decode([CartCheckoutCustomMeta].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

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

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(id, forKey: .id)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(addressId, forKey: .addressId)
        }
    }
}
