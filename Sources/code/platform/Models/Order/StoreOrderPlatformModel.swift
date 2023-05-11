

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var alohomoraUserId: Int?

        public var brandStoreTags: [String]?

        public var packagingMaterialCount: Int?

        public var state: String

        public var phone: Int

        public var brandId: [String: Any]?

        public var contactPerson: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var mallName: String?

        public var updatedAt: String?

        public var isActive: Bool?

        public var city: String

        public var storeActiveFrom: String?

        public var code: String?

        public var orderIntegrationId: String?

        public var sId: String

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var vatNo: String?

        public var latitude: Double

        public var address2: String?

        public var mallArea: String?

        public var parentStoreId: Int?

        public var locationType: String

        public var longitude: Double

        public var name: String

        public var isArchived: Bool?

        public var companyId: Int

        public var address1: String

        public var fulfillmentChannel: String

        public var loginUsername: String

        public var pincode: String

        public var storeEmail: String

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case alohomoraUserId = "alohomora_user_id"

            case brandStoreTags = "brand_store_tags"

            case packagingMaterialCount = "packaging_material_count"

            case state

            case phone

            case brandId = "brand_id"

            case contactPerson = "contact_person"

            case storeAddressJson = "store_address_json"

            case country

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case isActive = "is_active"

            case city

            case storeActiveFrom = "store_active_from"

            case code

            case orderIntegrationId = "order_integration_id"

            case sId = "s_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case vatNo = "vat_no"

            case latitude

            case address2

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case longitude

            case name

            case isArchived = "is_archived"

            case companyId = "company_id"

            case address1

            case fulfillmentChannel = "fulfillment_channel"

            case loginUsername = "login_username"

            case pincode

            case storeEmail = "store_email"

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.alohomoraUserId = alohomoraUserId

            self.brandStoreTags = brandStoreTags

            self.packagingMaterialCount = packagingMaterialCount

            self.state = state

            self.phone = phone

            self.brandId = brandId

            self.contactPerson = contactPerson

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.isActive = isActive

            self.city = city

            self.storeActiveFrom = storeActiveFrom

            self.code = code

            self.orderIntegrationId = orderIntegrationId

            self.sId = sId

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.vatNo = vatNo

            self.latitude = latitude

            self.address2 = address2

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.longitude = longitude

            self.name = name

            self.isArchived = isArchived

            self.companyId = companyId

            self.address1 = address1

            self.fulfillmentChannel = fulfillmentChannel

            self.loginUsername = loginUsername

            self.pincode = pincode

            self.storeEmail = storeEmail

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            address1 = try container.decode(String.self, forKey: .address1)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            pincode = try container.decode(String.self, forKey: .pincode)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var alohomoraUserId: Int?

        public var brandStoreTags: [String]?

        public var packagingMaterialCount: Int?

        public var state: String

        public var phone: Int

        public var brandId: [String: Any]?

        public var contactPerson: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var mallName: String?

        public var updatedAt: String?

        public var isActive: Bool?

        public var city: String

        public var storeActiveFrom: String?

        public var code: String?

        public var orderIntegrationId: String?

        public var sId: String

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var vatNo: String?

        public var latitude: Double

        public var address2: String?

        public var mallArea: String?

        public var parentStoreId: Int?

        public var locationType: String

        public var longitude: Double

        public var name: String

        public var isArchived: Bool?

        public var companyId: Int

        public var address1: String

        public var fulfillmentChannel: String

        public var loginUsername: String

        public var pincode: String

        public var storeEmail: String

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case alohomoraUserId = "alohomora_user_id"

            case brandStoreTags = "brand_store_tags"

            case packagingMaterialCount = "packaging_material_count"

            case state

            case phone

            case brandId = "brand_id"

            case contactPerson = "contact_person"

            case storeAddressJson = "store_address_json"

            case country

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case isActive = "is_active"

            case city

            case storeActiveFrom = "store_active_from"

            case code

            case orderIntegrationId = "order_integration_id"

            case sId = "s_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case vatNo = "vat_no"

            case latitude

            case address2

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case longitude

            case name

            case isArchived = "is_archived"

            case companyId = "company_id"

            case address1

            case fulfillmentChannel = "fulfillment_channel"

            case loginUsername = "login_username"

            case pincode

            case storeEmail = "store_email"

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.alohomoraUserId = alohomoraUserId

            self.brandStoreTags = brandStoreTags

            self.packagingMaterialCount = packagingMaterialCount

            self.state = state

            self.phone = phone

            self.brandId = brandId

            self.contactPerson = contactPerson

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.isActive = isActive

            self.city = city

            self.storeActiveFrom = storeActiveFrom

            self.code = code

            self.orderIntegrationId = orderIntegrationId

            self.sId = sId

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.vatNo = vatNo

            self.latitude = latitude

            self.address2 = address2

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.longitude = longitude

            self.name = name

            self.isArchived = isArchived

            self.companyId = companyId

            self.address1 = address1

            self.fulfillmentChannel = fulfillmentChannel

            self.loginUsername = loginUsername

            self.pincode = pincode

            self.storeEmail = storeEmail

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            address1 = try container.decode(String.self, forKey: .address1)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            pincode = try container.decode(String.self, forKey: .pincode)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
