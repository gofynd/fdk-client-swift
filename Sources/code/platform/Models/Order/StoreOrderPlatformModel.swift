

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var updatedAt: String?

        public var companyId: Int

        public var state: String

        public var mallArea: String?

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var storeAddressJson: StoreAddress?

        public var isEnabledForRecon: Bool?

        public var loginUsername: String

        public var parentStoreId: Int?

        public var alohomoraUserId: Int?

        public var mallName: String?

        public var phone: Int

        public var address2: String?

        public var createdAt: String

        public var sId: String

        public var longitude: Double

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var pincode: String

        public var locationType: String

        public var packagingMaterialCount: Int?

        public var contactPerson: String

        public var code: String?

        public var name: String

        public var vatNo: String?

        public var country: String

        public var city: String

        public var storeEmail: String

        public var latitude: Double

        public var isArchived: Bool?

        public var address1: String

        public var meta: StoreMeta

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case companyId = "company_id"

            case state

            case mallArea = "mall_area"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case storeAddressJson = "store_address_json"

            case isEnabledForRecon = "is_enabled_for_recon"

            case loginUsername = "login_username"

            case parentStoreId = "parent_store_id"

            case alohomoraUserId = "alohomora_user_id"

            case mallName = "mall_name"

            case phone

            case address2

            case createdAt = "created_at"

            case sId = "s_id"

            case longitude

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case pincode

            case locationType = "location_type"

            case packagingMaterialCount = "packaging_material_count"

            case contactPerson = "contact_person"

            case code

            case name

            case vatNo = "vat_no"

            case country

            case city

            case storeEmail = "store_email"

            case latitude

            case isArchived = "is_archived"

            case address1

            case meta
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.updatedAt = updatedAt

            self.companyId = companyId

            self.state = state

            self.mallArea = mallArea

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.storeAddressJson = storeAddressJson

            self.isEnabledForRecon = isEnabledForRecon

            self.loginUsername = loginUsername

            self.parentStoreId = parentStoreId

            self.alohomoraUserId = alohomoraUserId

            self.mallName = mallName

            self.phone = phone

            self.address2 = address2

            self.createdAt = createdAt

            self.sId = sId

            self.longitude = longitude

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.pincode = pincode

            self.locationType = locationType

            self.packagingMaterialCount = packagingMaterialCount

            self.contactPerson = contactPerson

            self.code = code

            self.name = name

            self.vatNo = vatNo

            self.country = country

            self.city = city

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.isArchived = isArchived

            self.address1 = address1

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var updatedAt: String?

        public var companyId: Int

        public var state: String

        public var mallArea: String?

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var storeAddressJson: StoreAddress?

        public var isEnabledForRecon: Bool?

        public var loginUsername: String

        public var parentStoreId: Int?

        public var alohomoraUserId: Int?

        public var mallName: String?

        public var phone: Int

        public var address2: String?

        public var createdAt: String

        public var sId: String

        public var longitude: Double

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var pincode: String

        public var locationType: String

        public var packagingMaterialCount: Int?

        public var contactPerson: String

        public var code: String?

        public var name: String

        public var vatNo: String?

        public var country: String

        public var city: String

        public var storeEmail: String

        public var latitude: Double

        public var isArchived: Bool?

        public var address1: String

        public var meta: StoreMeta

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case companyId = "company_id"

            case state

            case mallArea = "mall_area"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case storeAddressJson = "store_address_json"

            case isEnabledForRecon = "is_enabled_for_recon"

            case loginUsername = "login_username"

            case parentStoreId = "parent_store_id"

            case alohomoraUserId = "alohomora_user_id"

            case mallName = "mall_name"

            case phone

            case address2

            case createdAt = "created_at"

            case sId = "s_id"

            case longitude

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case pincode

            case locationType = "location_type"

            case packagingMaterialCount = "packaging_material_count"

            case contactPerson = "contact_person"

            case code

            case name

            case vatNo = "vat_no"

            case country

            case city

            case storeEmail = "store_email"

            case latitude

            case isArchived = "is_archived"

            case address1

            case meta
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.updatedAt = updatedAt

            self.companyId = companyId

            self.state = state

            self.mallArea = mallArea

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.storeAddressJson = storeAddressJson

            self.isEnabledForRecon = isEnabledForRecon

            self.loginUsername = loginUsername

            self.parentStoreId = parentStoreId

            self.alohomoraUserId = alohomoraUserId

            self.mallName = mallName

            self.phone = phone

            self.address2 = address2

            self.createdAt = createdAt

            self.sId = sId

            self.longitude = longitude

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.pincode = pincode

            self.locationType = locationType

            self.packagingMaterialCount = packagingMaterialCount

            self.contactPerson = contactPerson

            self.code = code

            self.name = name

            self.vatNo = vatNo

            self.country = country

            self.city = city

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.isArchived = isArchived

            self.address1 = address1

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
