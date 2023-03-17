

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartCheckoutDetailRequest
         Used By: Cart
     */

    class PlatformCartCheckoutDetailRequest: Codable {
        public var pos: Bool?

        public var aggregator: String?

        public var paymentParams: [String: Any]?

        public var deliveryAddress: [String: Any]?

        public var userId: String

        public var deviceId: String?

        public var merchantCode: String?

        public var addressId: String?

        public var orderingStore: Int?

        public var checkoutMode: String?

        public var billingAddressId: String?

        public var callbackUrl: String?

        public var billingAddress: [String: Any]?

        public var paymentMode: String

        public var paymentAutoConfirm: Bool?

        public var pickAtStoreUid: Int?

        public var files: [Files]?

        public var staff: StaffCheckout?

        public var id: String

        public var paymentIdentifier: String?

        public var orderType: String

        public var meta: [String: Any]?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case pos

            case aggregator

            case paymentParams = "payment_params"

            case deliveryAddress = "delivery_address"

            case userId = "user_id"

            case deviceId = "device_id"

            case merchantCode = "merchant_code"

            case addressId = "address_id"

            case orderingStore = "ordering_store"

            case checkoutMode = "checkout_mode"

            case billingAddressId = "billing_address_id"

            case callbackUrl = "callback_url"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"

            case paymentAutoConfirm = "payment_auto_confirm"

            case pickAtStoreUid = "pick_at_store_uid"

            case files

            case staff

            case id

            case paymentIdentifier = "payment_identifier"

            case orderType = "order_type"

            case meta

            case extraMeta = "extra_meta"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, checkoutMode: String? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil, userId: String) {
            self.pos = pos

            self.aggregator = aggregator

            self.paymentParams = paymentParams

            self.deliveryAddress = deliveryAddress

            self.userId = userId

            self.deviceId = deviceId

            self.merchantCode = merchantCode

            self.addressId = addressId

            self.orderingStore = orderingStore

            self.checkoutMode = checkoutMode

            self.billingAddressId = billingAddressId

            self.callbackUrl = callbackUrl

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode

            self.paymentAutoConfirm = paymentAutoConfirm

            self.pickAtStoreUid = pickAtStoreUid

            self.files = files

            self.staff = staff

            self.id = id

            self.paymentIdentifier = paymentIdentifier

            self.orderType = orderType

            self.meta = meta

            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            userId = try container.decode(String.self, forKey: .userId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                files = try container.decode([Files].self, forKey: .files)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
