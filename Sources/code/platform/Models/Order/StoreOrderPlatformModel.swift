

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var vatNo: String?

        public var address2: String?

        public var longitude: Double

        public var isActive: Bool?

        public var phone: Int

        public var code: String?

        public var mallName: String?

        public var mallArea: String?

        public var storeAddressJson: StoreAddress?

        public var meta: StoreMeta

        public var parentStoreId: Int?

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var latitude: Double

        public var brandId: [String: Any]?

        public var sId: String

        public var loginUsername: String

        public var storeActiveFrom: String?

        public var contactPerson: String

        public var isArchived: Bool?

        public var country: String

        public var storeEmail: String

        public var orderIntegrationId: String?

        public var city: String

        public var fulfillmentChannel: String

        public var companyId: Int

        public var createdAt: String

        public var name: String

        public var isEnabledForRecon: Bool?

        public var updatedAt: String?

        public var address1: String

        public var state: String

        public var locationType: String

        public var pincode: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case vatNo = "vat_no"

            case address2

            case longitude

            case isActive = "is_active"

            case phone

            case code

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case storeAddressJson = "store_address_json"

            case meta

            case parentStoreId = "parent_store_id"

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case latitude

            case brandId = "brand_id"

            case sId = "s_id"

            case loginUsername = "login_username"

            case storeActiveFrom = "store_active_from"

            case contactPerson = "contact_person"

            case isArchived = "is_archived"

            case country

            case storeEmail = "store_email"

            case orderIntegrationId = "order_integration_id"

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case createdAt = "created_at"

            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case updatedAt = "updated_at"

            case address1

            case state

            case locationType = "location_type"

            case pincode

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.vatNo = vatNo

            self.address2 = address2

            self.longitude = longitude

            self.isActive = isActive

            self.phone = phone

            self.code = code

            self.mallName = mallName

            self.mallArea = mallArea

            self.storeAddressJson = storeAddressJson

            self.meta = meta

            self.parentStoreId = parentStoreId

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.latitude = latitude

            self.brandId = brandId

            self.sId = sId

            self.loginUsername = loginUsername

            self.storeActiveFrom = storeActiveFrom

            self.contactPerson = contactPerson

            self.isArchived = isArchived

            self.country = country

            self.storeEmail = storeEmail

            self.orderIntegrationId = orderIntegrationId

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.createdAt = createdAt

            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.updatedAt = updatedAt

            self.address1 = address1

            self.state = state

            self.locationType = locationType

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                mallName = try container.decode(String.self, forKey: .mallName)

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
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            locationType = try container.decode(String.self, forKey: .locationType)

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

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

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
        public var vatNo: String?

        public var address2: String?

        public var longitude: Double

        public var isActive: Bool?

        public var phone: Int

        public var code: String?

        public var mallName: String?

        public var mallArea: String?

        public var storeAddressJson: StoreAddress?

        public var meta: StoreMeta

        public var parentStoreId: Int?

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var latitude: Double

        public var brandId: [String: Any]?

        public var sId: String

        public var loginUsername: String

        public var storeActiveFrom: String?

        public var contactPerson: String

        public var isArchived: Bool?

        public var country: String

        public var storeEmail: String

        public var orderIntegrationId: String?

        public var city: String

        public var fulfillmentChannel: String

        public var companyId: Int

        public var createdAt: String

        public var name: String

        public var isEnabledForRecon: Bool?

        public var updatedAt: String?

        public var address1: String

        public var state: String

        public var locationType: String

        public var pincode: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case vatNo = "vat_no"

            case address2

            case longitude

            case isActive = "is_active"

            case phone

            case code

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case storeAddressJson = "store_address_json"

            case meta

            case parentStoreId = "parent_store_id"

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case latitude

            case brandId = "brand_id"

            case sId = "s_id"

            case loginUsername = "login_username"

            case storeActiveFrom = "store_active_from"

            case contactPerson = "contact_person"

            case isArchived = "is_archived"

            case country

            case storeEmail = "store_email"

            case orderIntegrationId = "order_integration_id"

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case createdAt = "created_at"

            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case updatedAt = "updated_at"

            case address1

            case state

            case locationType = "location_type"

            case pincode

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.vatNo = vatNo

            self.address2 = address2

            self.longitude = longitude

            self.isActive = isActive

            self.phone = phone

            self.code = code

            self.mallName = mallName

            self.mallArea = mallArea

            self.storeAddressJson = storeAddressJson

            self.meta = meta

            self.parentStoreId = parentStoreId

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.latitude = latitude

            self.brandId = brandId

            self.sId = sId

            self.loginUsername = loginUsername

            self.storeActiveFrom = storeActiveFrom

            self.contactPerson = contactPerson

            self.isArchived = isArchived

            self.country = country

            self.storeEmail = storeEmail

            self.orderIntegrationId = orderIntegrationId

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.createdAt = createdAt

            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.updatedAt = updatedAt

            self.address1 = address1

            self.state = state

            self.locationType = locationType

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                mallName = try container.decode(String.self, forKey: .mallName)

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
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            locationType = try container.decode(String.self, forKey: .locationType)

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

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
        }
    }
}
