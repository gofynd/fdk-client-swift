

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartCheckoutDetailV2Request
         Used By: Cart
     */

    class PlatformCartCheckoutDetailV2Request: Codable {
        public var billingAddressId: String?

        public var aggregator: String?

        public var files: [Files]?

        public var meta: [String: Any]?

        public var deviceId: String?

        public var paymentAutoConfirm: Bool?

        public var extraMeta: [String: Any]?

        public var id: String

        public var merchantCode: String?

        public var orderType: String

        public var checkoutMode: String?

        public var billingAddress: [String: Any]?

        public var paymentIdentifier: String?

        public var callbackUrl: String?

        public var paymentMode: String?

        public var staff: StaffCheckout?

        public var addressId: String?

        public var pickAtStoreUid: Int?

        public var paymentMethods: [PaymentMethod]

        public var pos: Bool?

        public var paymentParams: [String: Any]?

        public var orderingStore: Int?

        public var userId: String

        public var deliveryAddress: [String: Any]?

        public var customMeta: [String: Any]?

        public var employeeCode: String?

        public enum CodingKeys: String, CodingKey {
            case billingAddressId = "billing_address_id"

            case aggregator

            case files

            case meta

            case deviceId = "device_id"

            case paymentAutoConfirm = "payment_auto_confirm"

            case extraMeta = "extra_meta"

            case id

            case merchantCode = "merchant_code"

            case orderType = "order_type"

            case checkoutMode = "checkout_mode"

            case billingAddress = "billing_address"

            case paymentIdentifier = "payment_identifier"

            case callbackUrl = "callback_url"

            case paymentMode = "payment_mode"

            case staff

            case addressId = "address_id"

            case pickAtStoreUid = "pick_at_store_uid"

            case paymentMethods = "payment_methods"

            case pos

            case paymentParams = "payment_params"

            case orderingStore = "ordering_store"

            case userId = "user_id"

            case deliveryAddress = "delivery_address"

            case customMeta = "custom_meta"

            case employeeCode = "employee_code"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, checkoutMode: String? = nil, customMeta: [String: Any]? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, employeeCode: String? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMethods: [PaymentMethod], paymentMode: String? = nil, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil, userId: String) {
            self.billingAddressId = billingAddressId

            self.aggregator = aggregator

            self.files = files

            self.meta = meta

            self.deviceId = deviceId

            self.paymentAutoConfirm = paymentAutoConfirm

            self.extraMeta = extraMeta

            self.id = id

            self.merchantCode = merchantCode

            self.orderType = orderType

            self.checkoutMode = checkoutMode

            self.billingAddress = billingAddress

            self.paymentIdentifier = paymentIdentifier

            self.callbackUrl = callbackUrl

            self.paymentMode = paymentMode

            self.staff = staff

            self.addressId = addressId

            self.pickAtStoreUid = pickAtStoreUid

            self.paymentMethods = paymentMethods

            self.pos = pos

            self.paymentParams = paymentParams

            self.orderingStore = orderingStore

            self.userId = userId

            self.deliveryAddress = deliveryAddress

            self.customMeta = customMeta

            self.employeeCode = employeeCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                files = try container.decode([Files].self, forKey: .files)

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
                deviceId = try container.decode(String.self, forKey: .deviceId)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)

            do {
                pos = try container.decode(Bool.self, forKey: .pos)

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

            userId = try container.decode(String.self, forKey: .userId)

            do {
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([String: Any].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encode(employeeCode, forKey: .employeeCode)
        }
    }
}
