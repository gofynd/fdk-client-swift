

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartCheckoutDetailRequest
         Used By: Cart
     */

    class PlatformCartCheckoutDetailRequest: Codable {
        public var callbackUrl: String?

        public var deliveryAddress: [String: Any]?

        public var id: String

        public var merchantCode: String?

        public var billingAddress: [String: Any]?

        public var files: [Files]?

        public var paymentIdentifier: String?

        public var orderType: String

        public var aggregator: String?

        public var deviceId: String?

        public var extraMeta: [String: Any]?

        public var checkoutMode: String?

        public var paymentParams: [String: Any]?

        public var addressId: String?

        public var billingAddressId: String?

        public var userId: String

        public var paymentMode: String

        public var pickAtStoreUid: Int?

        public var employeeCode: String?

        public var staff: StaffCheckout?

        public var orderingStore: Int?

        public var pos: Bool?

        public var paymentAutoConfirm: Bool?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case callbackUrl = "callback_url"

            case deliveryAddress = "delivery_address"

            case id

            case merchantCode = "merchant_code"

            case billingAddress = "billing_address"

            case files

            case paymentIdentifier = "payment_identifier"

            case orderType = "order_type"

            case aggregator

            case deviceId = "device_id"

            case extraMeta = "extra_meta"

            case checkoutMode = "checkout_mode"

            case paymentParams = "payment_params"

            case addressId = "address_id"

            case billingAddressId = "billing_address_id"

            case userId = "user_id"

            case paymentMode = "payment_mode"

            case pickAtStoreUid = "pick_at_store_uid"

            case employeeCode = "employee_code"

            case staff

            case orderingStore = "ordering_store"

            case pos

            case paymentAutoConfirm = "payment_auto_confirm"

            case meta
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, checkoutMode: String? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, employeeCode: String? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil, userId: String) {
            self.callbackUrl = callbackUrl

            self.deliveryAddress = deliveryAddress

            self.id = id

            self.merchantCode = merchantCode

            self.billingAddress = billingAddress

            self.files = files

            self.paymentIdentifier = paymentIdentifier

            self.orderType = orderType

            self.aggregator = aggregator

            self.deviceId = deviceId

            self.extraMeta = extraMeta

            self.checkoutMode = checkoutMode

            self.paymentParams = paymentParams

            self.addressId = addressId

            self.billingAddressId = billingAddressId

            self.userId = userId

            self.paymentMode = paymentMode

            self.pickAtStoreUid = pickAtStoreUid

            self.employeeCode = employeeCode

            self.staff = staff

            self.orderingStore = orderingStore

            self.pos = pos

            self.paymentAutoConfirm = paymentAutoConfirm

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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
                files = try container.decode([Files].self, forKey: .files)

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
                aggregator = try container.decode(String.self, forKey: .aggregator)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

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
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)

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
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encode(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
