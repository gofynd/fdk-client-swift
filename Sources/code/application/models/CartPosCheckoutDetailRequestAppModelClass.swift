

import Foundation
public extension ApplicationClient {
    /*
         Model: CartPosCheckoutDetailRequest
         Used By: PosCart
     */
    class CartPosCheckoutDetailRequest: Codable {
        public var paymentIdentifier: String?

        public var merchantCode: String?

        public var extraMeta: [String: Any]?

        public var staff: StaffCheckout?

        public var addressId: String?

        public var orderingStore: Int?

        public var orderType: String

        public var billingAddressId: String?

        public var callbackUrl: String?

        public var paymentAutoConfirm: Bool?

        public var deliveryAddress: [String: Any]?

        public var pos: Bool?

        public var aggregator: String?

        public var billingAddress: [String: Any]?

        public var meta: [String: Any]?

        public var customerDetails: CustomerDetails?

        public var paymentParams: [String: Any]?

        public var paymentMode: String

        public var files: [Files]?

        public var pickAtStoreUid: Int?

        public enum CodingKeys: String, CodingKey {
            case paymentIdentifier = "payment_identifier"

            case merchantCode = "merchant_code"

            case extraMeta = "extra_meta"

            case staff

            case addressId = "address_id"

            case orderingStore = "ordering_store"

            case orderType = "order_type"

            case billingAddressId = "billing_address_id"

            case callbackUrl = "callback_url"

            case paymentAutoConfirm = "payment_auto_confirm"

            case deliveryAddress = "delivery_address"

            case pos

            case aggregator

            case billingAddress = "billing_address"

            case meta

            case customerDetails = "customer_details"

            case paymentParams = "payment_params"

            case paymentMode = "payment_mode"

            case files

            case pickAtStoreUid = "pick_at_store_uid"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, customerDetails: CustomerDetails? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil) {
            self.paymentIdentifier = paymentIdentifier

            self.merchantCode = merchantCode

            self.extraMeta = extraMeta

            self.staff = staff

            self.addressId = addressId

            self.orderingStore = orderingStore

            self.orderType = orderType

            self.billingAddressId = billingAddressId

            self.callbackUrl = callbackUrl

            self.paymentAutoConfirm = paymentAutoConfirm

            self.deliveryAddress = deliveryAddress

            self.pos = pos

            self.aggregator = aggregator

            self.billingAddress = billingAddress

            self.meta = meta

            self.customerDetails = customerDetails

            self.paymentParams = paymentParams

            self.paymentMode = paymentMode

            self.files = files

            self.pickAtStoreUid = pickAtStoreUid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

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
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

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
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)

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
                pos = try container.decode(Bool.self, forKey: .pos)

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
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

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
                customerDetails = try container.decode(CustomerDetails.self, forKey: .customerDetails)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                files = try container.decode([Files].self, forKey: .files)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(customerDetails, forKey: .customerDetails)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)
        }
    }
}
