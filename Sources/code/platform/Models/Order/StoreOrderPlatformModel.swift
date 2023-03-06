

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var latitude: Double

        public var brandStoreTags: [String]?

        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var name: String

        public var storeActiveFrom: String?

        public var brandId: [String: Any]?

        public var mallName: String?

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var parentStoreId: Int?

        public var isEnabledForRecon: Bool?

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var fulfillmentChannel: String

        public var loginUsername: String

        public var vatNo: String?

        public var address1: String

        public var sId: String

        public var state: String

        public var updatedAt: String?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var city: String

        public var createdAt: String

        public var code: String?

        public var longitude: Double

        public var country: String

        public var isArchived: Bool?

        public var pincode: String

        public var storeEmail: String

        public var address2: String?

        public var companyId: Int

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case latitude

            case brandStoreTags = "brand_store_tags"

            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case name

            case storeActiveFrom = "store_active_from"

            case brandId = "brand_id"

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case parentStoreId = "parent_store_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case fulfillmentChannel = "fulfillment_channel"

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case address1

            case sId = "s_id"

            case state

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case city

            case createdAt = "created_at"

            case code

            case longitude

            case country

            case isArchived = "is_archived"

            case pincode

            case storeEmail = "store_email"

            case address2

            case companyId = "company_id"

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.latitude = latitude

            self.brandStoreTags = brandStoreTags

            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.name = name

            self.storeActiveFrom = storeActiveFrom

            self.brandId = brandId

            self.mallName = mallName

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.parentStoreId = parentStoreId

            self.isEnabledForRecon = isEnabledForRecon

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.fulfillmentChannel = fulfillmentChannel

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.address1 = address1

            self.sId = sId

            self.state = state

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.city = city

            self.createdAt = createdAt

            self.code = code

            self.longitude = longitude

            self.country = country

            self.isArchived = isArchived

            self.pincode = pincode

            self.storeEmail = storeEmail

            self.address2 = address2

            self.companyId = companyId

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

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
        public var latitude: Double

        public var brandStoreTags: [String]?

        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var name: String

        public var storeActiveFrom: String?

        public var brandId: [String: Any]?

        public var mallName: String?

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var parentStoreId: Int?

        public var isEnabledForRecon: Bool?

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var fulfillmentChannel: String

        public var loginUsername: String

        public var vatNo: String?

        public var address1: String

        public var sId: String

        public var state: String

        public var updatedAt: String?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var city: String

        public var createdAt: String

        public var code: String?

        public var longitude: Double

        public var country: String

        public var isArchived: Bool?

        public var pincode: String

        public var storeEmail: String

        public var address2: String?

        public var companyId: Int

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case latitude

            case brandStoreTags = "brand_store_tags"

            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case name

            case storeActiveFrom = "store_active_from"

            case brandId = "brand_id"

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case parentStoreId = "parent_store_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case fulfillmentChannel = "fulfillment_channel"

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case address1

            case sId = "s_id"

            case state

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case city

            case createdAt = "created_at"

            case code

            case longitude

            case country

            case isArchived = "is_archived"

            case pincode

            case storeEmail = "store_email"

            case address2

            case companyId = "company_id"

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.latitude = latitude

            self.brandStoreTags = brandStoreTags

            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.name = name

            self.storeActiveFrom = storeActiveFrom

            self.brandId = brandId

            self.mallName = mallName

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.parentStoreId = parentStoreId

            self.isEnabledForRecon = isEnabledForRecon

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.fulfillmentChannel = fulfillmentChannel

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.address1 = address1

            self.sId = sId

            self.state = state

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.city = city

            self.createdAt = createdAt

            self.code = code

            self.longitude = longitude

            self.country = country

            self.isArchived = isArchived

            self.pincode = pincode

            self.storeEmail = storeEmail

            self.address2 = address2

            self.companyId = companyId

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
