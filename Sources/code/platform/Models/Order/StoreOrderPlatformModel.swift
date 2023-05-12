

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var contactPerson: String

        public var vatNo: String?

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var mallArea: String?

        public var fulfillmentChannel: String

        public var locationType: String

        public var code: String?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var companyId: Int

        public var isActive: Bool?

        public var isEnabledForRecon: Bool?

        public var name: String

        public var state: String

        public var sId: String

        public var parentStoreId: Int?

        public var pincode: String

        public var brandId: [String: Any]?

        public var city: String

        public var address2: String?

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var storeActiveFrom: String?

        public var loginUsername: String

        public var country: String

        public var updatedAt: String?

        public var isArchived: Bool?

        public var storeEmail: String

        public var mallName: String?

        public var phone: Int

        public var alohomoraUserId: Int?

        public var address1: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case vatNo = "vat_no"

            case storeAddressJson = "store_address_json"

            case longitude

            case mallArea = "mall_area"

            case fulfillmentChannel = "fulfillment_channel"

            case locationType = "location_type"

            case code

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case companyId = "company_id"

            case isActive = "is_active"

            case isEnabledForRecon = "is_enabled_for_recon"

            case name

            case state

            case sId = "s_id"

            case parentStoreId = "parent_store_id"

            case pincode

            case brandId = "brand_id"

            case city

            case address2

            case brandStoreTags = "brand_store_tags"

            case latitude

            case storeActiveFrom = "store_active_from"

            case loginUsername = "login_username"

            case country

            case updatedAt = "updated_at"

            case isArchived = "is_archived"

            case storeEmail = "store_email"

            case mallName = "mall_name"

            case phone

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case packagingMaterialCount = "packaging_material_count"

            case meta
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.contactPerson = contactPerson

            self.vatNo = vatNo

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.mallArea = mallArea

            self.fulfillmentChannel = fulfillmentChannel

            self.locationType = locationType

            self.code = code

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.companyId = companyId

            self.isActive = isActive

            self.isEnabledForRecon = isEnabledForRecon

            self.name = name

            self.state = state

            self.sId = sId

            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.brandId = brandId

            self.city = city

            self.address2 = address2

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.storeActiveFrom = storeActiveFrom

            self.loginUsername = loginUsername

            self.country = country

            self.updatedAt = updatedAt

            self.isArchived = isArchived

            self.storeEmail = storeEmail

            self.mallName = mallName

            self.phone = phone

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            country = try container.decode(String.self, forKey: .country)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

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
        public var contactPerson: String

        public var vatNo: String?

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var mallArea: String?

        public var fulfillmentChannel: String

        public var locationType: String

        public var code: String?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var companyId: Int

        public var isActive: Bool?

        public var isEnabledForRecon: Bool?

        public var name: String

        public var state: String

        public var sId: String

        public var parentStoreId: Int?

        public var pincode: String

        public var brandId: [String: Any]?

        public var city: String

        public var address2: String?

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var storeActiveFrom: String?

        public var loginUsername: String

        public var country: String

        public var updatedAt: String?

        public var isArchived: Bool?

        public var storeEmail: String

        public var mallName: String?

        public var phone: Int

        public var alohomoraUserId: Int?

        public var address1: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case vatNo = "vat_no"

            case storeAddressJson = "store_address_json"

            case longitude

            case mallArea = "mall_area"

            case fulfillmentChannel = "fulfillment_channel"

            case locationType = "location_type"

            case code

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case companyId = "company_id"

            case isActive = "is_active"

            case isEnabledForRecon = "is_enabled_for_recon"

            case name

            case state

            case sId = "s_id"

            case parentStoreId = "parent_store_id"

            case pincode

            case brandId = "brand_id"

            case city

            case address2

            case brandStoreTags = "brand_store_tags"

            case latitude

            case storeActiveFrom = "store_active_from"

            case loginUsername = "login_username"

            case country

            case updatedAt = "updated_at"

            case isArchived = "is_archived"

            case storeEmail = "store_email"

            case mallName = "mall_name"

            case phone

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case packagingMaterialCount = "packaging_material_count"

            case meta
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.contactPerson = contactPerson

            self.vatNo = vatNo

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.mallArea = mallArea

            self.fulfillmentChannel = fulfillmentChannel

            self.locationType = locationType

            self.code = code

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.companyId = companyId

            self.isActive = isActive

            self.isEnabledForRecon = isEnabledForRecon

            self.name = name

            self.state = state

            self.sId = sId

            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.brandId = brandId

            self.city = city

            self.address2 = address2

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.storeActiveFrom = storeActiveFrom

            self.loginUsername = loginUsername

            self.country = country

            self.updatedAt = updatedAt

            self.isArchived = isArchived

            self.storeEmail = storeEmail

            self.mallName = mallName

            self.phone = phone

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            country = try container.decode(String.self, forKey: .country)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
