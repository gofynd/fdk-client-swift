

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var sId: String

        public var code: String?

        public var updatedAt: String?

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var latitude: Double

        public var address2: String?

        public var alohomoraUserId: Int?

        public var brandStoreTags: [String]?

        public var isActive: Bool?

        public var address1: String

        public var mallArea: String?

        public var storeEmail: String

        public var companyId: Int

        public var longitude: Double

        public var country: String

        public var loginUsername: String

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var vatNo: String?

        public var pincode: String

        public var isArchived: Bool?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var locationType: String

        public var phone: Int

        public var createdAt: String

        public var mallName: String?

        public var orderIntegrationId: String?

        public var name: String

        public var storeActiveFrom: String?

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case sId = "s_id"

            case code

            case updatedAt = "updated_at"

            case city

            case storeAddressJson = "store_address_json"

            case latitude

            case address2

            case alohomoraUserId = "alohomora_user_id"

            case brandStoreTags = "brand_store_tags"

            case isActive = "is_active"

            case address1

            case mallArea = "mall_area"

            case storeEmail = "store_email"

            case companyId = "company_id"

            case longitude

            case country

            case loginUsername = "login_username"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case vatNo = "vat_no"

            case pincode

            case isArchived = "is_archived"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case phone

            case createdAt = "created_at"

            case mallName = "mall_name"

            case orderIntegrationId = "order_integration_id"

            case name

            case storeActiveFrom = "store_active_from"

            case state
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.sId = sId

            self.code = code

            self.updatedAt = updatedAt

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.latitude = latitude

            self.address2 = address2

            self.alohomoraUserId = alohomoraUserId

            self.brandStoreTags = brandStoreTags

            self.isActive = isActive

            self.address1 = address1

            self.mallArea = mallArea

            self.storeEmail = storeEmail

            self.companyId = companyId

            self.longitude = longitude

            self.country = country

            self.loginUsername = loginUsername

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.vatNo = vatNo

            self.pincode = pincode

            self.isArchived = isArchived

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.phone = phone

            self.createdAt = createdAt

            self.mallName = mallName

            self.orderIntegrationId = orderIntegrationId

            self.name = name

            self.storeActiveFrom = storeActiveFrom

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            companyId = try container.decode(Int.self, forKey: .companyId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var sId: String

        public var code: String?

        public var updatedAt: String?

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var latitude: Double

        public var address2: String?

        public var alohomoraUserId: Int?

        public var brandStoreTags: [String]?

        public var isActive: Bool?

        public var address1: String

        public var mallArea: String?

        public var storeEmail: String

        public var companyId: Int

        public var longitude: Double

        public var country: String

        public var loginUsername: String

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var vatNo: String?

        public var pincode: String

        public var isArchived: Bool?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var locationType: String

        public var phone: Int

        public var createdAt: String

        public var mallName: String?

        public var orderIntegrationId: String?

        public var name: String

        public var storeActiveFrom: String?

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case sId = "s_id"

            case code

            case updatedAt = "updated_at"

            case city

            case storeAddressJson = "store_address_json"

            case latitude

            case address2

            case alohomoraUserId = "alohomora_user_id"

            case brandStoreTags = "brand_store_tags"

            case isActive = "is_active"

            case address1

            case mallArea = "mall_area"

            case storeEmail = "store_email"

            case companyId = "company_id"

            case longitude

            case country

            case loginUsername = "login_username"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case vatNo = "vat_no"

            case pincode

            case isArchived = "is_archived"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case phone

            case createdAt = "created_at"

            case mallName = "mall_name"

            case orderIntegrationId = "order_integration_id"

            case name

            case storeActiveFrom = "store_active_from"

            case state
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.sId = sId

            self.code = code

            self.updatedAt = updatedAt

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.latitude = latitude

            self.address2 = address2

            self.alohomoraUserId = alohomoraUserId

            self.brandStoreTags = brandStoreTags

            self.isActive = isActive

            self.address1 = address1

            self.mallArea = mallArea

            self.storeEmail = storeEmail

            self.companyId = companyId

            self.longitude = longitude

            self.country = country

            self.loginUsername = loginUsername

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.vatNo = vatNo

            self.pincode = pincode

            self.isArchived = isArchived

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.phone = phone

            self.createdAt = createdAt

            self.mallName = mallName

            self.orderIntegrationId = orderIntegrationId

            self.name = name

            self.storeActiveFrom = storeActiveFrom

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            companyId = try container.decode(Int.self, forKey: .companyId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
