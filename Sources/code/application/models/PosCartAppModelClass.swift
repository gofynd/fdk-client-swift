import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateCartShipmentItem
         Used By: PosCart
     */
    class UpdateCartShipmentItem: Codable {
        public var articleUid: String

        public var shipmentType: String

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case articleUid = "article_uid"

            case shipmentType = "shipment_type"

            case quantity
        }

        public init(articleUid: String, quantity: Int?, shipmentType: String) {
            self.articleUid = articleUid

            self.shipmentType = shipmentType

            self.quantity = quantity
        }

        public func duplicate() -> UpdateCartShipmentItem {
            let dict = self.dictionary!
            let copy = UpdateCartShipmentItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articleUid = try container.decode(String.self, forKey: .articleUid)

            shipmentType = try container.decode(String.self, forKey: .shipmentType)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleUid, forKey: .articleUid)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }

    /*
         Model: UpdateCartShipmentRequest
         Used By: PosCart
     */
    class UpdateCartShipmentRequest: Codable {
        public var shipments: [UpdateCartShipmentItem]

        public enum CodingKeys: String, CodingKey {
            case shipments
        }

        public init(shipments: [UpdateCartShipmentItem]) {
            self.shipments = shipments
        }

        public func duplicate() -> UpdateCartShipmentRequest {
            let dict = self.dictionary!
            let copy = UpdateCartShipmentRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode([UpdateCartShipmentItem].self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }

    /*
         Model: Files
         Used By: PosCart
     */
    class Files: Codable {
        public var values: [String]

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case values

            case key
        }

        public init(key: String, values: [String]) {
            self.values = values

            self.key = key
        }

        public func duplicate() -> Files {
            let dict = self.dictionary!
            let copy = Files(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            values = try container.decode([String].self, forKey: .values)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: CartPosCheckoutDetailRequest
         Used By: PosCart
     */
    class CartPosCheckoutDetailRequest: Codable {
        public var pos: Bool?

        public var files: [Files]?

        public var callbackUrl: String?

        public var staff: StaffCheckout?

        public var addressId: String?

        public var orderType: String

        public var pickAtStoreUid: Int?

        public var billingAddressId: String?

        public var paymentParams: [String: Any]?

        public var billingAddress: [String: Any]?

        public var deliveryAddress: [String: Any]?

        public var paymentIdentifier: String?

        public var paymentMode: String

        public var paymentAutoConfirm: Bool?

        public var meta: [String: Any]?

        public var orderingStore: Int?

        public var merchantCode: String?

        public var aggregator: String?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case pos

            case files

            case callbackUrl = "callback_url"

            case staff

            case addressId = "address_id"

            case orderType = "order_type"

            case pickAtStoreUid = "pick_at_store_uid"

            case billingAddressId = "billing_address_id"

            case paymentParams = "payment_params"

            case billingAddress = "billing_address"

            case deliveryAddress = "delivery_address"

            case paymentIdentifier = "payment_identifier"

            case paymentMode = "payment_mode"

            case paymentAutoConfirm = "payment_auto_confirm"

            case meta

            case orderingStore = "ordering_store"

            case merchantCode = "merchant_code"

            case aggregator

            case extraMeta = "extra_meta"
        }

        public init(addressId: String?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: String?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, files: [Files]?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, orderType: String, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, pickAtStoreUid: Int?, pos: Bool?, staff: StaffCheckout?) {
            self.pos = pos

            self.files = files

            self.callbackUrl = callbackUrl

            self.staff = staff

            self.addressId = addressId

            self.orderType = orderType

            self.pickAtStoreUid = pickAtStoreUid

            self.billingAddressId = billingAddressId

            self.paymentParams = paymentParams

            self.billingAddress = billingAddress

            self.deliveryAddress = deliveryAddress

            self.paymentIdentifier = paymentIdentifier

            self.paymentMode = paymentMode

            self.paymentAutoConfirm = paymentAutoConfirm

            self.meta = meta

            self.orderingStore = orderingStore

            self.merchantCode = merchantCode

            self.aggregator = aggregator

            self.extraMeta = extraMeta
        }

        public func duplicate() -> CartPosCheckoutDetailRequest {
            let dict = self.dictionary!
            let copy = CartPosCheckoutDetailRequest(dictionary: dict)!
            return copy
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
                files = try container.decode([Files].self, forKey: .files)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)

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
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

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
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }

    /*
         Model: CartDeliveryModesResponse
         Used By: PosCart
     */
    class CartDeliveryModesResponse: Codable {
        public var availableModes: [String]?

        public var pickupStores: [Int]?

        public enum CodingKeys: String, CodingKey {
            case availableModes = "available_modes"

            case pickupStores = "pickup_stores"
        }

        public init(availableModes: [String]?, pickupStores: [Int]?) {
            self.availableModes = availableModes

            self.pickupStores = pickupStores
        }

        public func duplicate() -> CartDeliveryModesResponse {
            let dict = self.dictionary!
            let copy = CartDeliveryModesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availableModes = try container.decode([String].self, forKey: .availableModes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickupStores = try container.decode([Int].self, forKey: .pickupStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availableModes, forKey: .availableModes)

            try? container.encodeIfPresent(pickupStores, forKey: .pickupStores)
        }
    }

    /*
         Model: PickupStoreDetail
         Used By: PosCart
     */
    class PickupStoreDetail: Codable {
        public var areaCodeSlug: String?

        public var addressType: String?

        public var name: String?

        public var storeCode: String?

        public var pincode: Int?

        public var uid: Int?

        public var address: String?

        public var email: String?

        public var city: String?

        public var state: String?

        public var id: Int?

        public var area: String?

        public var country: String?

        public var landmark: String?

        public var areaCode: String?

        public var phone: String?

        public enum CodingKeys: String, CodingKey {
            case areaCodeSlug = "area_code_slug"

            case addressType = "address_type"

            case name

            case storeCode = "store_code"

            case pincode

            case uid

            case address

            case email

            case city

            case state

            case id

            case area

            case country

            case landmark

            case areaCode = "area_code"

            case phone
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, city: String?, country: String?, email: String?, id: Int?, landmark: String?, name: String?, phone: String?, pincode: Int?, state: String?, storeCode: String?, uid: Int?) {
            self.areaCodeSlug = areaCodeSlug

            self.addressType = addressType

            self.name = name

            self.storeCode = storeCode

            self.pincode = pincode

            self.uid = uid

            self.address = address

            self.email = email

            self.city = city

            self.state = state

            self.id = id

            self.area = area

            self.country = country

            self.landmark = landmark

            self.areaCode = areaCode

            self.phone = phone
        }

        public func duplicate() -> PickupStoreDetail {
            let dict = self.dictionary!
            let copy = PickupStoreDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                areaCode = try container.decode(String.self, forKey: .areaCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }

    /*
         Model: StoreDetailsResponse
         Used By: PosCart
     */
    class StoreDetailsResponse: Codable {
        public var items: [PickupStoreDetail]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [PickupStoreDetail]?) {
            self.items = items
        }

        public func duplicate() -> StoreDetailsResponse {
            let dict = self.dictionary!
            let copy = StoreDetailsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([PickupStoreDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
