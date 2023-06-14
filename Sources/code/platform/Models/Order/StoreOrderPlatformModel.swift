

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var parentStoreId: Int?

        public var pincode: String

        public var storeActiveFrom: String?

        public var brandStoreTags: [String]?

        public var fulfillmentChannel: String

        public var locationType: String

        public var code: String?

        public var city: String

        public var isArchived: Bool?

        public var updatedAt: String?

        public var vatNo: String?

        public var address1: String

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var isEnabledForRecon: Bool?

        public var longitude: Double

        public var state: String

        public var contactPerson: String

        public var companyId: Int

        public var sId: String

        public var mallName: String?

        public var country: String

        public var storeAddressJson: StoreAddress?

        public var mallArea: String?

        public var latitude: Double

        public var storeEmail: String

        public var brandId: [String: Any]?

        public var address2: String?

        public var alohomoraUserId: Int?

        public var meta: StoreMeta

        public var isActive: Bool?

        public var name: String

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case parentStoreId = "parent_store_id"

            case pincode

            case storeActiveFrom = "store_active_from"

            case brandStoreTags = "brand_store_tags"

            case fulfillmentChannel = "fulfillment_channel"

            case locationType = "location_type"

            case code

            case city

            case isArchived = "is_archived"

            case updatedAt = "updated_at"

            case vatNo = "vat_no"

            case address1

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case isEnabledForRecon = "is_enabled_for_recon"

            case longitude

            case state

            case contactPerson = "contact_person"

            case companyId = "company_id"

            case sId = "s_id"

            case mallName = "mall_name"

            case country

            case storeAddressJson = "store_address_json"

            case mallArea = "mall_area"

            case latitude

            case storeEmail = "store_email"

            case brandId = "brand_id"

            case address2

            case alohomoraUserId = "alohomora_user_id"

            case meta

            case isActive = "is_active"

            case name

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.brandStoreTags = brandStoreTags

            self.fulfillmentChannel = fulfillmentChannel

            self.locationType = locationType

            self.code = code

            self.city = city

            self.isArchived = isArchived

            self.updatedAt = updatedAt

            self.vatNo = vatNo

            self.address1 = address1

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.isEnabledForRecon = isEnabledForRecon

            self.longitude = longitude

            self.state = state

            self.contactPerson = contactPerson

            self.companyId = companyId

            self.sId = sId

            self.mallName = mallName

            self.country = country

            self.storeAddressJson = storeAddressJson

            self.mallArea = mallArea

            self.latitude = latitude

            self.storeEmail = storeEmail

            self.brandId = brandId

            self.address2 = address2

            self.alohomoraUserId = alohomoraUserId

            self.meta = meta

            self.isActive = isActive

            self.name = name

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var parentStoreId: Int?

        public var pincode: String

        public var storeActiveFrom: String?

        public var brandStoreTags: [String]?

        public var fulfillmentChannel: String

        public var locationType: String

        public var code: String?

        public var city: String

        public var isArchived: Bool?

        public var updatedAt: String?

        public var vatNo: String?

        public var address1: String

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var isEnabledForRecon: Bool?

        public var longitude: Double

        public var state: String

        public var contactPerson: String

        public var companyId: Int

        public var sId: String

        public var mallName: String?

        public var country: String

        public var storeAddressJson: StoreAddress?

        public var mallArea: String?

        public var latitude: Double

        public var storeEmail: String

        public var brandId: [String: Any]?

        public var address2: String?

        public var alohomoraUserId: Int?

        public var meta: StoreMeta

        public var isActive: Bool?

        public var name: String

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case parentStoreId = "parent_store_id"

            case pincode

            case storeActiveFrom = "store_active_from"

            case brandStoreTags = "brand_store_tags"

            case fulfillmentChannel = "fulfillment_channel"

            case locationType = "location_type"

            case code

            case city

            case isArchived = "is_archived"

            case updatedAt = "updated_at"

            case vatNo = "vat_no"

            case address1

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case isEnabledForRecon = "is_enabled_for_recon"

            case longitude

            case state

            case contactPerson = "contact_person"

            case companyId = "company_id"

            case sId = "s_id"

            case mallName = "mall_name"

            case country

            case storeAddressJson = "store_address_json"

            case mallArea = "mall_area"

            case latitude

            case storeEmail = "store_email"

            case brandId = "brand_id"

            case address2

            case alohomoraUserId = "alohomora_user_id"

            case meta

            case isActive = "is_active"

            case name

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.brandStoreTags = brandStoreTags

            self.fulfillmentChannel = fulfillmentChannel

            self.locationType = locationType

            self.code = code

            self.city = city

            self.isArchived = isArchived

            self.updatedAt = updatedAt

            self.vatNo = vatNo

            self.address1 = address1

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.isEnabledForRecon = isEnabledForRecon

            self.longitude = longitude

            self.state = state

            self.contactPerson = contactPerson

            self.companyId = companyId

            self.sId = sId

            self.mallName = mallName

            self.country = country

            self.storeAddressJson = storeAddressJson

            self.mallArea = mallArea

            self.latitude = latitude

            self.storeEmail = storeEmail

            self.brandId = brandId

            self.address2 = address2

            self.alohomoraUserId = alohomoraUserId

            self.meta = meta

            self.isActive = isActive

            self.name = name

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
