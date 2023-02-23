

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var storeActiveFrom: String?

        public var orderIntegrationId: String?

        public var createdAt: String

        public var longitude: Double

        public var brandStoreTags: [String]?

        public var isEnabledForRecon: Bool?

        public var parentStoreId: Int?

        public var sId: String

        public var storeAddressJson: StoreAddress?

        public var fulfillmentChannel: String

        public var vatNo: String?

        public var name: String

        public var isActive: Bool?

        public var alohomoraUserId: Int?

        public var isArchived: Bool?

        public var latitude: Double

        public var updatedAt: String?

        public var address1: String

        public var phone: Int

        public var loginUsername: String

        public var brandId: [String: Any]?

        public var code: String?

        public var address2: String?

        public var mallName: String?

        public var storeEmail: String

        public var country: String

        public var pincode: String

        public var packagingMaterialCount: Int?

        public var state: String

        public var companyId: Int

        public var mallArea: String?

        public var city: String

        public var locationType: String

        public var contactPerson: String

        public var meta: StoreMeta

        public enum CodingKeys: String, CodingKey {
            case storeActiveFrom = "store_active_from"

            case orderIntegrationId = "order_integration_id"

            case createdAt = "created_at"

            case longitude

            case brandStoreTags = "brand_store_tags"

            case isEnabledForRecon = "is_enabled_for_recon"

            case parentStoreId = "parent_store_id"

            case sId = "s_id"

            case storeAddressJson = "store_address_json"

            case fulfillmentChannel = "fulfillment_channel"

            case vatNo = "vat_no"

            case name

            case isActive = "is_active"

            case alohomoraUserId = "alohomora_user_id"

            case isArchived = "is_archived"

            case latitude

            case updatedAt = "updated_at"

            case address1

            case phone

            case loginUsername = "login_username"

            case brandId = "brand_id"

            case code

            case address2

            case mallName = "mall_name"

            case storeEmail = "store_email"

            case country

            case pincode

            case packagingMaterialCount = "packaging_material_count"

            case state

            case companyId = "company_id"

            case mallArea = "mall_area"

            case city

            case locationType = "location_type"

            case contactPerson = "contact_person"

            case meta
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.storeActiveFrom = storeActiveFrom

            self.orderIntegrationId = orderIntegrationId

            self.createdAt = createdAt

            self.longitude = longitude

            self.brandStoreTags = brandStoreTags

            self.isEnabledForRecon = isEnabledForRecon

            self.parentStoreId = parentStoreId

            self.sId = sId

            self.storeAddressJson = storeAddressJson

            self.fulfillmentChannel = fulfillmentChannel

            self.vatNo = vatNo

            self.name = name

            self.isActive = isActive

            self.alohomoraUserId = alohomoraUserId

            self.isArchived = isArchived

            self.latitude = latitude

            self.updatedAt = updatedAt

            self.address1 = address1

            self.phone = phone

            self.loginUsername = loginUsername

            self.brandId = brandId

            self.code = code

            self.address2 = address2

            self.mallName = mallName

            self.storeEmail = storeEmail

            self.country = country

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount

            self.state = state

            self.companyId = companyId

            self.mallArea = mallArea

            self.city = city

            self.locationType = locationType

            self.contactPerson = contactPerson

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(Int.self, forKey: .phone)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            locationType = try container.decode(String.self, forKey: .locationType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode(StoreMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
