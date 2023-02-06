

import Foundation
public extension ApplicationClient {
    /*
         Model: CartCheckoutDetailRequest
         Used By: Cart
     */
    class CartCheckoutDetailRequest: Codable {
        public var addressId: String?

        public var billingAddressId: String?

        public var aggregator: String?

        public var extraMeta: [String: Any]?

        public var orderingStore: Int?

        public var paymentParams: [String: Any]?

        public var meta: [String: Any]?

        public var paymentIdentifier: String?

        public var customMeta: [CartCheckoutCustomMeta]?

        public var billingAddress: [String: Any]?

        public var deliveryAddress: [String: Any]?

        public var paymentMode: String

        public var staff: StaffCheckout?

        public var id: String?

        public var merchantCode: String?

        public var paymentAutoConfirm: Bool?

        public var callbackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case addressId = "address_id"

            case billingAddressId = "billing_address_id"

            case aggregator

            case extraMeta = "extra_meta"

            case orderingStore = "ordering_store"

            case paymentParams = "payment_params"

            case meta

            case paymentIdentifier = "payment_identifier"

            case customMeta = "custom_meta"

            case billingAddress = "billing_address"

            case deliveryAddress = "delivery_address"

            case paymentMode = "payment_mode"

            case staff

            case id

            case merchantCode = "merchant_code"

            case paymentAutoConfirm = "payment_auto_confirm"

            case callbackUrl = "callback_url"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, customMeta: [CartCheckoutCustomMeta]? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, id: String? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, staff: StaffCheckout? = nil) {
            self.addressId = addressId

            self.billingAddressId = billingAddressId

            self.aggregator = aggregator

            self.extraMeta = extraMeta

            self.orderingStore = orderingStore

            self.paymentParams = paymentParams

            self.meta = meta

            self.paymentIdentifier = paymentIdentifier

            self.customMeta = customMeta

            self.billingAddress = billingAddress

            self.deliveryAddress = deliveryAddress

            self.paymentMode = paymentMode

            self.staff = staff

            self.id = id

            self.merchantCode = merchantCode

            self.paymentAutoConfirm = paymentAutoConfirm

            self.callbackUrl = callbackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

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
                aggregator = try container.decode(String.self, forKey: .aggregator)

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

            do {
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

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
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

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
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

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
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encode(id, forKey: .id)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encode(callbackUrl, forKey: .callbackUrl)
        }
    }
}
