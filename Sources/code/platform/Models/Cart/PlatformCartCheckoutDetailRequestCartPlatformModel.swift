

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartCheckoutDetailRequest
         Used By: Cart
     */

    class PlatformCartCheckoutDetailRequest: Codable {
        public var orderType: String

        public var aggregator: String?

        public var paymentMode: String

        public var pickAtStoreUid: Int?

        public var employeeCode: String?

        public var deviceId: String?

        public var deliveryAddress: [String: Any]?

        public var orderingStore: Int?

        public var callbackUrl: String?

        public var paymentParams: [String: Any]?

        public var id: String

        public var staff: StaffCheckout?

        public var files: [Files]?

        public var extraMeta: [String: Any]?

        public var meta: [String: Any]?

        public var billingAddress: [String: Any]?

        public var paymentIdentifier: String?

        public var checkoutMode: String?

        public var userId: String

        public var merchantCode: String?

        public var paymentAutoConfirm: Bool?

        public var pos: Bool?

        public var addressId: String?

        public var billingAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case orderType = "order_type"

            case aggregator

            case paymentMode = "payment_mode"

            case pickAtStoreUid = "pick_at_store_uid"

            case employeeCode = "employee_code"

            case deviceId = "device_id"

            case deliveryAddress = "delivery_address"

            case orderingStore = "ordering_store"

            case callbackUrl = "callback_url"

            case paymentParams = "payment_params"

            case id

            case staff

            case files

            case extraMeta = "extra_meta"

            case meta

            case billingAddress = "billing_address"

            case paymentIdentifier = "payment_identifier"

            case checkoutMode = "checkout_mode"

            case userId = "user_id"

            case merchantCode = "merchant_code"

            case paymentAutoConfirm = "payment_auto_confirm"

            case pos

            case addressId = "address_id"

            case billingAddressId = "billing_address_id"
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, checkoutMode: String? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, employeeCode: String? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil, userId: String) {
            self.orderType = orderType

            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.pickAtStoreUid = pickAtStoreUid

            self.employeeCode = employeeCode

            self.deviceId = deviceId

            self.deliveryAddress = deliveryAddress

            self.orderingStore = orderingStore

            self.callbackUrl = callbackUrl

            self.paymentParams = paymentParams

            self.id = id

            self.staff = staff

            self.files = files

            self.extraMeta = extraMeta

            self.meta = meta

            self.billingAddress = billingAddress

            self.paymentIdentifier = paymentIdentifier

            self.checkoutMode = checkoutMode

            self.userId = userId

            self.merchantCode = merchantCode

            self.paymentAutoConfirm = paymentAutoConfirm

            self.pos = pos

            self.addressId = addressId

            self.billingAddressId = billingAddressId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                deviceId = try container.decode(String.self, forKey: .deviceId)

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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

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
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encode(employeeCode, forKey: .employeeCode)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        }
    }
}
