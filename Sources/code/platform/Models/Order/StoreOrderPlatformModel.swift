

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var city: String

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var storeAddressJson: StoreAddress?

        public var state: String

        public var alohomoraUserId: Int?

        public var country: String

        public var mallName: String?

        public var orderIntegrationId: String?

        public var longitude: Double

        public var storeActiveFrom: String?

        public var sId: String

        public var address2: String?

        public var isActive: Bool?

        public var storeEmail: String

        public var createdAt: String

        public var name: String

        public var loginUsername: String

        public var contactPerson: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var mallArea: String?

        public var companyId: Int

        public var meta: StoreMeta

        public var address1: String

        public var vatNo: String?

        public var fulfillmentChannel: String

        public var updatedAt: String?

        public var phone: Int

        public var code: String?

        public var isArchived: Bool?

        public var locationType: String

        public var parentStoreId: Int?

        public var pincode: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case city

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeAddressJson = "store_address_json"

            case state

            case alohomoraUserId = "alohomora_user_id"

            case country

            case mallName = "mall_name"

            case orderIntegrationId = "order_integration_id"

            case longitude

            case storeActiveFrom = "store_active_from"

            case sId = "s_id"

            case address2

            case isActive = "is_active"

            case storeEmail = "store_email"

            case createdAt = "created_at"

            case name

            case loginUsername = "login_username"

            case contactPerson = "contact_person"

            case brandStoreTags = "brand_store_tags"

            case latitude

            case mallArea = "mall_area"

            case companyId = "company_id"

            case meta

            case address1

            case vatNo = "vat_no"

            case fulfillmentChannel = "fulfillment_channel"

            case updatedAt = "updated_at"

            case phone

            case code

            case isArchived = "is_archived"

            case locationType = "location_type"

            case parentStoreId = "parent_store_id"

            case pincode

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.city = city

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.storeAddressJson = storeAddressJson

            self.state = state

            self.alohomoraUserId = alohomoraUserId

            self.country = country

            self.mallName = mallName

            self.orderIntegrationId = orderIntegrationId

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.sId = sId

            self.address2 = address2

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.createdAt = createdAt

            self.name = name

            self.loginUsername = loginUsername

            self.contactPerson = contactPerson

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.mallArea = mallArea

            self.companyId = companyId

            self.meta = meta

            self.address1 = address1

            self.vatNo = vatNo

            self.fulfillmentChannel = fulfillmentChannel

            self.updatedAt = updatedAt

            self.phone = phone

            self.code = code

            self.isArchived = isArchived

            self.locationType = locationType

            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

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

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var city: String

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var storeAddressJson: StoreAddress?

        public var state: String

        public var alohomoraUserId: Int?

        public var country: String

        public var mallName: String?

        public var orderIntegrationId: String?

        public var longitude: Double

        public var storeActiveFrom: String?

        public var sId: String

        public var address2: String?

        public var isActive: Bool?

        public var storeEmail: String

        public var createdAt: String

        public var name: String

        public var loginUsername: String

        public var contactPerson: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var mallArea: String?

        public var companyId: Int

        public var meta: StoreMeta

        public var address1: String

        public var vatNo: String?

        public var fulfillmentChannel: String

        public var updatedAt: String?

        public var phone: Int

        public var code: String?

        public var isArchived: Bool?

        public var locationType: String

        public var parentStoreId: Int?

        public var pincode: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case city

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeAddressJson = "store_address_json"

            case state

            case alohomoraUserId = "alohomora_user_id"

            case country

            case mallName = "mall_name"

            case orderIntegrationId = "order_integration_id"

            case longitude

            case storeActiveFrom = "store_active_from"

            case sId = "s_id"

            case address2

            case isActive = "is_active"

            case storeEmail = "store_email"

            case createdAt = "created_at"

            case name

            case loginUsername = "login_username"

            case contactPerson = "contact_person"

            case brandStoreTags = "brand_store_tags"

            case latitude

            case mallArea = "mall_area"

            case companyId = "company_id"

            case meta

            case address1

            case vatNo = "vat_no"

            case fulfillmentChannel = "fulfillment_channel"

            case updatedAt = "updated_at"

            case phone

            case code

            case isArchived = "is_archived"

            case locationType = "location_type"

            case parentStoreId = "parent_store_id"

            case pincode

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.city = city

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.storeAddressJson = storeAddressJson

            self.state = state

            self.alohomoraUserId = alohomoraUserId

            self.country = country

            self.mallName = mallName

            self.orderIntegrationId = orderIntegrationId

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.sId = sId

            self.address2 = address2

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.createdAt = createdAt

            self.name = name

            self.loginUsername = loginUsername

            self.contactPerson = contactPerson

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.mallArea = mallArea

            self.companyId = companyId

            self.meta = meta

            self.address1 = address1

            self.vatNo = vatNo

            self.fulfillmentChannel = fulfillmentChannel

            self.updatedAt = updatedAt

            self.phone = phone

            self.code = code

            self.isArchived = isArchived

            self.locationType = locationType

            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

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

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
        }
    }
}
