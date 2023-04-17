

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var longitude: Double

        public var alohomoraUserId: Int?

        public var storeAddressJson: StoreAddress?

        public var mallName: String?

        public var companyId: Int

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var mallArea: String?

        public var storeActiveFrom: String?

        public var vatNo: String?

        public var state: String

        public var country: String

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var parentStoreId: Int?

        public var locationType: String

        public var fulfillmentChannel: String

        public var latitude: Double

        public var brandId: [String: Any]?

        public var isActive: Bool?

        public var isEnabledForRecon: Bool?

        public var address2: String?

        public var meta: StoreMeta

        public var phone: Int

        public var code: String?

        public var address1: String

        public var brandStoreTags: [String]?

        public var sId: String

        public var pincode: String

        public var contactPerson: String

        public var updatedAt: String?

        public var createdAt: String

        public var city: String

        public var name: String

        public var storeEmail: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case alohomoraUserId = "alohomora_user_id"

            case storeAddressJson = "store_address_json"

            case mallName = "mall_name"

            case companyId = "company_id"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case mallArea = "mall_area"

            case storeActiveFrom = "store_active_from"

            case vatNo = "vat_no"

            case state

            case country

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case fulfillmentChannel = "fulfillment_channel"

            case latitude

            case brandId = "brand_id"

            case isActive = "is_active"

            case isEnabledForRecon = "is_enabled_for_recon"

            case address2

            case meta

            case phone

            case code

            case address1

            case brandStoreTags = "brand_store_tags"

            case sId = "s_id"

            case pincode

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case city

            case name

            case storeEmail = "store_email"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.longitude = longitude

            self.alohomoraUserId = alohomoraUserId

            self.storeAddressJson = storeAddressJson

            self.mallName = mallName

            self.companyId = companyId

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.mallArea = mallArea

            self.storeActiveFrom = storeActiveFrom

            self.vatNo = vatNo

            self.state = state

            self.country = country

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.fulfillmentChannel = fulfillmentChannel

            self.latitude = latitude

            self.brandId = brandId

            self.isActive = isActive

            self.isEnabledForRecon = isEnabledForRecon

            self.address2 = address2

            self.meta = meta

            self.phone = phone

            self.code = code

            self.address1 = address1

            self.brandStoreTags = brandStoreTags

            self.sId = sId

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.city = city

            self.name = name

            self.storeEmail = storeEmail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var longitude: Double

        public var alohomoraUserId: Int?

        public var storeAddressJson: StoreAddress?

        public var mallName: String?

        public var companyId: Int

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var mallArea: String?

        public var storeActiveFrom: String?

        public var vatNo: String?

        public var state: String

        public var country: String

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var parentStoreId: Int?

        public var locationType: String

        public var fulfillmentChannel: String

        public var latitude: Double

        public var brandId: [String: Any]?

        public var isActive: Bool?

        public var isEnabledForRecon: Bool?

        public var address2: String?

        public var meta: StoreMeta

        public var phone: Int

        public var code: String?

        public var address1: String

        public var brandStoreTags: [String]?

        public var sId: String

        public var pincode: String

        public var contactPerson: String

        public var updatedAt: String?

        public var createdAt: String

        public var city: String

        public var name: String

        public var storeEmail: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case alohomoraUserId = "alohomora_user_id"

            case storeAddressJson = "store_address_json"

            case mallName = "mall_name"

            case companyId = "company_id"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case mallArea = "mall_area"

            case storeActiveFrom = "store_active_from"

            case vatNo = "vat_no"

            case state

            case country

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case fulfillmentChannel = "fulfillment_channel"

            case latitude

            case brandId = "brand_id"

            case isActive = "is_active"

            case isEnabledForRecon = "is_enabled_for_recon"

            case address2

            case meta

            case phone

            case code

            case address1

            case brandStoreTags = "brand_store_tags"

            case sId = "s_id"

            case pincode

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case city

            case name

            case storeEmail = "store_email"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.longitude = longitude

            self.alohomoraUserId = alohomoraUserId

            self.storeAddressJson = storeAddressJson

            self.mallName = mallName

            self.companyId = companyId

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.mallArea = mallArea

            self.storeActiveFrom = storeActiveFrom

            self.vatNo = vatNo

            self.state = state

            self.country = country

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.fulfillmentChannel = fulfillmentChannel

            self.latitude = latitude

            self.brandId = brandId

            self.isActive = isActive

            self.isEnabledForRecon = isEnabledForRecon

            self.address2 = address2

            self.meta = meta

            self.phone = phone

            self.code = code

            self.address1 = address1

            self.brandStoreTags = brandStoreTags

            self.sId = sId

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.city = city

            self.name = name

            self.storeEmail = storeEmail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
        }
    }
}
