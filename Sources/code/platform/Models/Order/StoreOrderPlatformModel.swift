

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var updatedAt: String?

        public var createdAt: String

        public var isArchived: Bool?

        public var latitude: Double

        public var orderIntegrationId: String?

        public var sId: String

        public var fulfillmentChannel: String

        public var mallName: String?

        public var storeAddressJson: StoreAddress?

        public var address2: String?

        public var city: String

        public var alohomoraUserId: Int?

        public var brandId: [String: Any]?

        public var companyId: Int

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var longitude: Double

        public var isActive: Bool?

        public var loginUsername: String

        public var brandStoreTags: [String]?

        public var mallArea: String?

        public var parentStoreId: Int?

        public var country: String

        public var name: String

        public var meta: StoreMeta

        public var contactPerson: String

        public var phone: Int

        public var pincode: String

        public var state: String

        public var vatNo: String?

        public var address1: String

        public var locationType: String

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case isArchived = "is_archived"

            case latitude

            case orderIntegrationId = "order_integration_id"

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case mallName = "mall_name"

            case storeAddressJson = "store_address_json"

            case address2

            case city

            case alohomoraUserId = "alohomora_user_id"

            case brandId = "brand_id"

            case companyId = "company_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case longitude

            case isActive = "is_active"

            case loginUsername = "login_username"

            case brandStoreTags = "brand_store_tags"

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case country

            case name

            case meta

            case contactPerson = "contact_person"

            case phone

            case pincode

            case state

            case vatNo = "vat_no"

            case address1

            case locationType = "location_type"

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.isArchived = isArchived

            self.latitude = latitude

            self.orderIntegrationId = orderIntegrationId

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.mallName = mallName

            self.storeAddressJson = storeAddressJson

            self.address2 = address2

            self.city = city

            self.alohomoraUserId = alohomoraUserId

            self.brandId = brandId

            self.companyId = companyId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.longitude = longitude

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.brandStoreTags = brandStoreTags

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.country = country

            self.name = name

            self.meta = meta

            self.contactPerson = contactPerson

            self.phone = phone

            self.pincode = pincode

            self.state = state

            self.vatNo = vatNo

            self.address1 = address1

            self.locationType = locationType

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

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
        public var updatedAt: String?

        public var createdAt: String

        public var isArchived: Bool?

        public var latitude: Double

        public var orderIntegrationId: String?

        public var sId: String

        public var fulfillmentChannel: String

        public var mallName: String?

        public var storeAddressJson: StoreAddress?

        public var address2: String?

        public var city: String

        public var alohomoraUserId: Int?

        public var brandId: [String: Any]?

        public var companyId: Int

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var longitude: Double

        public var isActive: Bool?

        public var loginUsername: String

        public var brandStoreTags: [String]?

        public var mallArea: String?

        public var parentStoreId: Int?

        public var country: String

        public var name: String

        public var meta: StoreMeta

        public var contactPerson: String

        public var phone: Int

        public var pincode: String

        public var state: String

        public var vatNo: String?

        public var address1: String

        public var locationType: String

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case isArchived = "is_archived"

            case latitude

            case orderIntegrationId = "order_integration_id"

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case mallName = "mall_name"

            case storeAddressJson = "store_address_json"

            case address2

            case city

            case alohomoraUserId = "alohomora_user_id"

            case brandId = "brand_id"

            case companyId = "company_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case longitude

            case isActive = "is_active"

            case loginUsername = "login_username"

            case brandStoreTags = "brand_store_tags"

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case country

            case name

            case meta

            case contactPerson = "contact_person"

            case phone

            case pincode

            case state

            case vatNo = "vat_no"

            case address1

            case locationType = "location_type"

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.isArchived = isArchived

            self.latitude = latitude

            self.orderIntegrationId = orderIntegrationId

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.mallName = mallName

            self.storeAddressJson = storeAddressJson

            self.address2 = address2

            self.city = city

            self.alohomoraUserId = alohomoraUserId

            self.brandId = brandId

            self.companyId = companyId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.longitude = longitude

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.brandStoreTags = brandStoreTags

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.country = country

            self.name = name

            self.meta = meta

            self.contactPerson = contactPerson

            self.phone = phone

            self.pincode = pincode

            self.state = state

            self.vatNo = vatNo

            self.address1 = address1

            self.locationType = locationType

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
        }
    }
}
