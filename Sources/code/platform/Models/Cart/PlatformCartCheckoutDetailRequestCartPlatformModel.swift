

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartCheckoutDetailRequest
         Used By: Cart
     */

    class PlatformCartCheckoutDetailRequest: Codable {
        public var billingAddress: [String: Any]?

        public var aggregator: String?

        public var id: String

        public var callbackUrl: String?

        public var pos: Bool?

        public var orderType: String

        public var addressId: String?

        public var paymentAutoConfirm: Bool?

        public var userId: String

        public var checkoutMode: String?

        public var employeeCode: String?

        public var files: [Files]?

        public var paymentMode: String

        public var meta: [String: Any]?

        public var paymentIdentifier: String?

        public var deviceId: String?

        public var billingAddressId: String?

        public var paymentParams: [String: Any]?

        public var pickAtStoreUid: Int?

        public var deliveryAddress: [String: Any]?

        public var merchantCode: String?

        public var staff: StaffCheckout?

        public var extraMeta: [String: Any]?

        public var orderingStore: Int?

        public enum CodingKeys: String, CodingKey {
            case billingAddress = "billing_address"

            case aggregator

            case id

            case callbackUrl = "callback_url"

            case pos

            case orderType = "order_type"

            case addressId = "address_id"

            case paymentAutoConfirm = "payment_auto_confirm"

            case userId = "user_id"

            case checkoutMode = "checkout_mode"

            case employeeCode = "employee_code"

            case files

            case paymentMode = "payment_mode"

            case meta

            case paymentIdentifier = "payment_identifier"

            case deviceId = "device_id"

            case billingAddressId = "billing_address_id"

            case paymentParams = "payment_params"

            case pickAtStoreUid = "pick_at_store_uid"

            case deliveryAddress = "delivery_address"

            case merchantCode = "merchant_code"

            case staff

            case extraMeta = "extra_meta"

            case orderingStore = "ordering_store"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, checkoutMode: String? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, employeeCode: String? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil, userId: String) {
            self.billingAddress = billingAddress

            self.aggregator = aggregator

            self.id = id

            self.callbackUrl = callbackUrl

            self.pos = pos

            self.orderType = orderType

            self.addressId = addressId

            self.paymentAutoConfirm = paymentAutoConfirm

            self.userId = userId

            self.checkoutMode = checkoutMode

            self.employeeCode = employeeCode

            self.files = files

            self.paymentMode = paymentMode

            self.meta = meta

            self.paymentIdentifier = paymentIdentifier

            self.deviceId = deviceId

            self.billingAddressId = billingAddressId

            self.paymentParams = paymentParams

            self.pickAtStoreUid = pickAtStoreUid

            self.deliveryAddress = deliveryAddress

            self.merchantCode = merchantCode

            self.staff = staff

            self.extraMeta = extraMeta

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

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

            userId = try container.decode(String.self, forKey: .userId)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                files = try container.decode([Files].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                deviceId = try container.decode(String.self, forKey: .deviceId)

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
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

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
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

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
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encode(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encode(orderingStore, forKey: .orderingStore)
        }
    }
}
