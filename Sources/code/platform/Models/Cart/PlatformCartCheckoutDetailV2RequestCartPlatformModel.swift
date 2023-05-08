

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartCheckoutDetailV2Request
         Used By: Cart
     */

    class PlatformCartCheckoutDetailV2Request: Codable {
        public var userId: String

        public var staff: StaffCheckoutSchema?

        public var id: String

        public var paymentIdentifier: String?

        public var billingAddressId: String?

        public var paymentMethods: [PaymentMethodSchema]

        public var extraMeta: [String: Any]?

        public var billingAddress: [String: Any]?

        public var files: [FilesSchema]?

        public var paymentParams: [String: Any]?

        public var pos: Bool?

        public var addressId: String?

        public var orderingStore: Int?

        public var deliveryAddress: [String: Any]?

        public var paymentMode: String?

        public var callbackUrl: String?

        public var aggregator: String?

        public var orderType: String

        public var merchantCode: String?

        public var paymentAutoConfirm: Bool?

        public var employeeCode: String?

        public var pickAtStoreUid: Int?

        public var checkoutMode: String?

        public var customMeta: [String: Any]?

        public var meta: [String: Any]?

        public var deviceId: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case staff

            case id

            case paymentIdentifier = "payment_identifier"

            case billingAddressId = "billing_address_id"

            case paymentMethods = "payment_methods"

            case extraMeta = "extra_meta"

            case billingAddress = "billing_address"

            case files

            case paymentParams = "payment_params"

            case pos

            case addressId = "address_id"

            case orderingStore = "ordering_store"

            case deliveryAddress = "delivery_address"

            case paymentMode = "payment_mode"

            case callbackUrl = "callback_url"

            case aggregator

            case orderType = "order_type"

            case merchantCode = "merchant_code"

            case paymentAutoConfirm = "payment_auto_confirm"

            case employeeCode = "employee_code"

            case pickAtStoreUid = "pick_at_store_uid"

            case checkoutMode = "checkout_mode"

            case customMeta = "custom_meta"

            case meta

            case deviceId = "device_id"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, checkoutMode: String? = nil, customMeta: [String: Any]? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, employeeCode: String? = nil, extraMeta: [String: Any]? = nil, files: [FilesSchema]? = nil, id: String, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMethods: [PaymentMethodSchema], paymentMode: String? = nil, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckoutSchema? = nil, userId: String) {
            self.userId = userId

            self.staff = staff

            self.id = id

            self.paymentIdentifier = paymentIdentifier

            self.billingAddressId = billingAddressId

            self.paymentMethods = paymentMethods

            self.extraMeta = extraMeta

            self.billingAddress = billingAddress

            self.files = files

            self.paymentParams = paymentParams

            self.pos = pos

            self.addressId = addressId

            self.orderingStore = orderingStore

            self.deliveryAddress = deliveryAddress

            self.paymentMode = paymentMode

            self.callbackUrl = callbackUrl

            self.aggregator = aggregator

            self.orderType = orderType

            self.merchantCode = merchantCode

            self.paymentAutoConfirm = paymentAutoConfirm

            self.employeeCode = employeeCode

            self.pickAtStoreUid = pickAtStoreUid

            self.checkoutMode = checkoutMode

            self.customMeta = customMeta

            self.meta = meta

            self.deviceId = deviceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                staff = try container.decode(StaffCheckoutSchema.self, forKey: .staff)

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

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([PaymentMethodSchema].self, forKey: .paymentMethods)

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
                files = try container.decode([FilesSchema].self, forKey: .files)

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
                pos = try container.decode(Bool.self, forKey: .pos)

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
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

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
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

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

            orderType = try container.decode(String.self, forKey: .orderType)

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
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encode(employeeCode, forKey: .employeeCode)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(deviceId, forKey: .deviceId)
        }
    }
}
