

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandStoreTags: [String]?

        public var storeAddressJson: StoreAddress?

        public var orderIntegrationId: String?

        public var pincode: String

        public var parentStoreId: Int?

        public var code: String?

        public var country: String

        public var loginUsername: String

        public var mallName: String?

        public var phone: Int

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var isActive: Bool?

        public var city: String

        public var mallArea: String?

        public var packagingMaterialCount: Int?

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var contactPerson: String

        public var createdAt: String

        public var state: String

        public var isEnabledForRecon: Bool?

        public var storeEmail: String

        public var locationType: String

        public var longitude: Double

        public var latitude: Double

        public var meta: StoreMeta

        public var address1: String

        public var address2: String?

        public var sId: String

        public var name: String

        public var companyId: Int

        public var fulfillmentChannel: String

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case brandStoreTags = "brand_store_tags"

            case storeAddressJson = "store_address_json"

            case orderIntegrationId = "order_integration_id"

            case pincode

            case parentStoreId = "parent_store_id"

            case code

            case country

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case phone

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case isActive = "is_active"

            case city

            case mallArea = "mall_area"

            case packagingMaterialCount = "packaging_material_count"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case state

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeEmail = "store_email"

            case locationType = "location_type"

            case longitude

            case latitude

            case meta

            case address1

            case address2

            case sId = "s_id"

            case name

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandStoreTags = brandStoreTags

            self.storeAddressJson = storeAddressJson

            self.orderIntegrationId = orderIntegrationId

            self.pincode = pincode

            self.parentStoreId = parentStoreId

            self.code = code

            self.country = country

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.phone = phone

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.isActive = isActive

            self.city = city

            self.mallArea = mallArea

            self.packagingMaterialCount = packagingMaterialCount

            self.vatNo = vatNo

            self.brandId = brandId

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.state = state

            self.isEnabledForRecon = isEnabledForRecon

            self.storeEmail = storeEmail

            self.locationType = locationType

            self.longitude = longitude

            self.latitude = latitude

            self.meta = meta

            self.address1 = address1

            self.address2 = address2

            self.sId = sId

            self.name = name

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandStoreTags: [String]?

        public var storeAddressJson: StoreAddress?

        public var orderIntegrationId: String?

        public var pincode: String

        public var parentStoreId: Int?

        public var code: String?

        public var country: String

        public var loginUsername: String

        public var mallName: String?

        public var phone: Int

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var isActive: Bool?

        public var city: String

        public var mallArea: String?

        public var packagingMaterialCount: Int?

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var contactPerson: String

        public var createdAt: String

        public var state: String

        public var isEnabledForRecon: Bool?

        public var storeEmail: String

        public var locationType: String

        public var longitude: Double

        public var latitude: Double

        public var meta: StoreMeta

        public var address1: String

        public var address2: String?

        public var sId: String

        public var name: String

        public var companyId: Int

        public var fulfillmentChannel: String

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case brandStoreTags = "brand_store_tags"

            case storeAddressJson = "store_address_json"

            case orderIntegrationId = "order_integration_id"

            case pincode

            case parentStoreId = "parent_store_id"

            case code

            case country

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case phone

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case isActive = "is_active"

            case city

            case mallArea = "mall_area"

            case packagingMaterialCount = "packaging_material_count"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case state

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeEmail = "store_email"

            case locationType = "location_type"

            case longitude

            case latitude

            case meta

            case address1

            case address2

            case sId = "s_id"

            case name

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandStoreTags = brandStoreTags

            self.storeAddressJson = storeAddressJson

            self.orderIntegrationId = orderIntegrationId

            self.pincode = pincode

            self.parentStoreId = parentStoreId

            self.code = code

            self.country = country

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.phone = phone

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.isActive = isActive

            self.city = city

            self.mallArea = mallArea

            self.packagingMaterialCount = packagingMaterialCount

            self.vatNo = vatNo

            self.brandId = brandId

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.state = state

            self.isEnabledForRecon = isEnabledForRecon

            self.storeEmail = storeEmail

            self.locationType = locationType

            self.longitude = longitude

            self.latitude = latitude

            self.meta = meta

            self.address1 = address1

            self.address2 = address2

            self.sId = sId

            self.name = name

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)
        }
    }
}
