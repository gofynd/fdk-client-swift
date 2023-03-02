

import Foundation
public extension ApplicationClient {
    /*
         Model: CartCheckoutDetailRequest
         Used By: Cart
     */
    class CartCheckoutDetailRequest: Codable {
        public var extraMeta: [String: Any]?

        public var billingAddress: [String: Any]?

        public var callbackUrl: String?

        public var meta: [String: Any]?

        public var aggregator: String?

        public var orderingStore: Int?

        public var paymentParams: [String: Any]?

        public var deliveryAddress: [String: Any]?

        public var billingAddressId: String?

        public var customerDetails: CustomerDetails?

        public var paymentAutoConfirm: Bool?

        public var merchantCode: String?

        public var addressId: String?

        public var staff: StaffCheckout?

        public var paymentMode: String

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case billingAddress = "billing_address"

            case callbackUrl = "callback_url"

            case meta

            case aggregator

            case orderingStore = "ordering_store"

            case paymentParams = "payment_params"

            case deliveryAddress = "delivery_address"

            case billingAddressId = "billing_address_id"

            case customerDetails = "customer_details"

            case paymentAutoConfirm = "payment_auto_confirm"

            case merchantCode = "merchant_code"

            case addressId = "address_id"

            case staff

            case paymentMode = "payment_mode"

            case paymentIdentifier = "payment_identifier"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, customerDetails: CustomerDetails? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, staff: StaffCheckout? = nil) {
            self.extraMeta = extraMeta

            self.billingAddress = billingAddress

            self.callbackUrl = callbackUrl

            self.meta = meta

            self.aggregator = aggregator

            self.orderingStore = orderingStore

            self.paymentParams = paymentParams

            self.deliveryAddress = deliveryAddress

            self.billingAddressId = billingAddressId

            self.customerDetails = customerDetails

            self.paymentAutoConfirm = paymentAutoConfirm

            self.merchantCode = merchantCode

            self.addressId = addressId

            self.staff = staff

            self.paymentMode = paymentMode

            self.paymentIdentifier = paymentIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                aggregator = try container.decode(String.self, forKey: .aggregator)

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
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

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
                customerDetails = try container.decode(CustomerDetails.self, forKey: .customerDetails)

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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encode(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
