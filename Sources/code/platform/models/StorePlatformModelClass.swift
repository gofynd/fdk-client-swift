

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var state: String

        public var city: String

        public var brandStoreTags: [String]?

        public var address2: String?

        public var orderIntegrationId: String?

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var longitude: Double

        public var country: String

        public var mallName: String?

        public var name: String

        public var createdAt: String

        public var isActive: Bool?

        public var parentStoreId: Int?

        public var pincode: String

        public var address1: String

        public var sId: String

        public var storeEmail: String

        public var contactPerson: String

        public var loginUsername: String

        public var code: String?

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var latitude: Double

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var locationType: String

        public var companyId: Int

        public var storeAddressJson: StoreAddress?

        public var mallArea: String?

        public var vatNo: String?

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case state

            case city

            case brandStoreTags = "brand_store_tags"

            case address2

            case orderIntegrationId = "order_integration_id"

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case longitude

            case country

            case mallName = "mall_name"

            case name

            case createdAt = "created_at"

            case isActive = "is_active"

            case parentStoreId = "parent_store_id"

            case pincode

            case address1

            case sId = "s_id"

            case storeEmail = "store_email"

            case contactPerson = "contact_person"

            case loginUsername = "login_username"

            case code

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case latitude

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case locationType = "location_type"

            case companyId = "company_id"

            case storeAddressJson = "store_address_json"

            case mallArea = "mall_area"

            case vatNo = "vat_no"

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.city = city

            self.brandStoreTags = brandStoreTags

            self.address2 = address2

            self.orderIntegrationId = orderIntegrationId

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.longitude = longitude

            self.country = country

            self.mallName = mallName

            self.name = name

            self.createdAt = createdAt

            self.isActive = isActive

            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.address1 = address1

            self.sId = sId

            self.storeEmail = storeEmail

            self.contactPerson = contactPerson

            self.loginUsername = loginUsername

            self.code = code

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.latitude = latitude

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.locationType = locationType

            self.companyId = companyId

            self.storeAddressJson = storeAddressJson

            self.mallArea = mallArea

            self.vatNo = vatNo

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            sId = try container.decode(String.self, forKey: .sId)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
