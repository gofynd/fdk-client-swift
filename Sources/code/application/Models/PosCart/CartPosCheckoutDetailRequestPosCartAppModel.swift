

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: CartPosCheckoutDetailRequest
         Used By: PosCart
     */
    class CartPosCheckoutDetailRequest: Codable {
        public var addressId: String?

        public var paymentIdentifier: String?

        public var extraMeta: [String: Any]?

        public var customerDetails: CustomerDetails?

        public var paymentAutoConfirm: Bool?

        public var pickAtStoreUid: Int?

        public var meta: [String: Any]?

        public var pos: Bool?

        public var files: [Files]?

        public var paymentParams: [String: Any]?

        public var orderingStore: Int?

        public var staff: StaffCheckout?

        public var billingAddress: [String: Any]?

        public var billingAddressId: String?

        public var customMeta: [CartCheckoutCustomMeta]?

        public var callbackUrl: String?

        public var orderType: String

        public var deliveryAddress: [String: Any]?

        public var id: String?

        public var paymentMode: String

        public var aggregator: String?

        public var merchantCode: String?

        public enum CodingKeys: String, CodingKey {
            case addressId = "address_id"

            case paymentIdentifier = "payment_identifier"

            case extraMeta = "extra_meta"

            case customerDetails = "customer_details"

            case paymentAutoConfirm = "payment_auto_confirm"

            case pickAtStoreUid = "pick_at_store_uid"

            case meta

            case pos

            case files

            case paymentParams = "payment_params"

            case orderingStore = "ordering_store"

            case staff

            case billingAddress = "billing_address"

            case billingAddressId = "billing_address_id"

            case customMeta = "custom_meta"

            case callbackUrl = "callback_url"

            case orderType = "order_type"

            case deliveryAddress = "delivery_address"

            case id

            case paymentMode = "payment_mode"

            case aggregator

            case merchantCode = "merchant_code"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, customerDetails: CustomerDetails? = nil, customMeta: [CartCheckoutCustomMeta]? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil) {
            self.addressId = addressId

            self.paymentIdentifier = paymentIdentifier

            self.extraMeta = extraMeta

            self.customerDetails = customerDetails

            self.paymentAutoConfirm = paymentAutoConfirm

            self.pickAtStoreUid = pickAtStoreUid

            self.meta = meta

            self.pos = pos

            self.files = files

            self.paymentParams = paymentParams

            self.orderingStore = orderingStore

            self.staff = staff

            self.billingAddress = billingAddress

            self.billingAddressId = billingAddressId

            self.customMeta = customMeta

            self.callbackUrl = callbackUrl

            self.orderType = orderType

            self.deliveryAddress = deliveryAddress

            self.id = id

            self.paymentMode = paymentMode

            self.aggregator = aggregator

            self.merchantCode = merchantCode
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
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

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
                pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)

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
                pos = try container.decode(Bool.self, forKey: .pos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([Files].self, forKey: .files)

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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

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
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encode(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encode(id, forKey: .id)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
