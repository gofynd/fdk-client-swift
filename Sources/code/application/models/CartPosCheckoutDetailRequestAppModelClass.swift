

import Foundation
public extension ApplicationClient {
    /*
         Model: CartPosCheckoutDetailRequest
         Used By: PosCart
     */
    class CartPosCheckoutDetailRequest: Codable {
        public var aggregator: String?

        public var meta: [String: Any]?

        public var staff: StaffCheckout?

        public var paymentIdentifier: String?

        public var orderType: String

        public var billingAddressId: String?

        public var callbackUrl: String?

        public var extraMeta: [String: Any]?

        public var orderingStore: Int?

        public var pos: Bool?

        public var deliveryAddress: [String: Any]?

        public var paymentAutoConfirm: Bool?

        public var files: [Files]?

        public var paymentParams: [String: Any]?

        public var paymentMode: String

        public var addressId: String?

        public var pickAtStoreUid: Int?

        public var billingAddress: [String: Any]?

        public var merchantCode: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case meta

            case staff

            case paymentIdentifier = "payment_identifier"

            case orderType = "order_type"

            case billingAddressId = "billing_address_id"

            case callbackUrl = "callback_url"

            case extraMeta = "extra_meta"

            case orderingStore = "ordering_store"

            case pos

            case deliveryAddress = "delivery_address"

            case paymentAutoConfirm = "payment_auto_confirm"

            case files

            case paymentParams = "payment_params"

            case paymentMode = "payment_mode"

            case addressId = "address_id"

            case pickAtStoreUid = "pick_at_store_uid"

            case billingAddress = "billing_address"

            case merchantCode = "merchant_code"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil) {
            self.aggregator = aggregator

            self.meta = meta

            self.staff = staff

            self.paymentIdentifier = paymentIdentifier

            self.orderType = orderType

            self.billingAddressId = billingAddressId

            self.callbackUrl = callbackUrl

            self.extraMeta = extraMeta

            self.orderingStore = orderingStore

            self.pos = pos

            self.deliveryAddress = deliveryAddress

            self.paymentAutoConfirm = paymentAutoConfirm

            self.files = files

            self.paymentParams = paymentParams

            self.paymentMode = paymentMode

            self.addressId = addressId

            self.pickAtStoreUid = pickAtStoreUid

            self.billingAddress = billingAddress

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

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
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

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
                pos = try container.decode(Bool.self, forKey: .pos)

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
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

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
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

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

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
