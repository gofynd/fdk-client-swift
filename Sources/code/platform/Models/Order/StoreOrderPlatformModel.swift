

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var state: String

        public var isActive: Bool?

        public var name: String

        public var locationType: String

        public var mallName: String?

        public var updatedAt: String?

        public var companyId: Int

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var city: String

        public var pincode: String

        public var brandStoreTags: [String]?

        public var createdAt: String

        public var code: String?

        public var contactPerson: String

        public var country: String

        public var orderIntegrationId: String?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var address1: String

        public var storeActiveFrom: String?

        public var loginUsername: String

        public var storeEmail: String

        public var packagingMaterialCount: Int?

        public var longitude: Double

        public var mallArea: String?

        public var parentStoreId: Int?

        public var meta: StoreMeta

        public var latitude: Double

        public var sId: String

        public var isEnabledForRecon: Bool?

        public var isArchived: Bool?

        public var phone: Int

        public var address2: String?

        public var storeAddressJson: StoreAddress?

        public enum CodingKeys: String, CodingKey {
            case state

            case isActive = "is_active"

            case name

            case locationType = "location_type"

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case companyId = "company_id"

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case city

            case pincode

            case brandStoreTags = "brand_store_tags"

            case createdAt = "created_at"

            case code

            case contactPerson = "contact_person"

            case country

            case orderIntegrationId = "order_integration_id"

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case address1

            case storeActiveFrom = "store_active_from"

            case loginUsername = "login_username"

            case storeEmail = "store_email"

            case packagingMaterialCount = "packaging_material_count"

            case longitude

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case meta

            case latitude

            case sId = "s_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case isArchived = "is_archived"

            case phone

            case address2

            case storeAddressJson = "store_address_json"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.isActive = isActive

            self.name = name

            self.locationType = locationType

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.companyId = companyId

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.city = city

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.createdAt = createdAt

            self.code = code

            self.contactPerson = contactPerson

            self.country = country

            self.orderIntegrationId = orderIntegrationId

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.address1 = address1

            self.storeActiveFrom = storeActiveFrom

            self.loginUsername = loginUsername

            self.storeEmail = storeEmail

            self.packagingMaterialCount = packagingMaterialCount

            self.longitude = longitude

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.meta = meta

            self.latitude = latitude

            self.sId = sId

            self.isEnabledForRecon = isEnabledForRecon

            self.isArchived = isArchived

            self.phone = phone

            self.address2 = address2

            self.storeAddressJson = storeAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var state: String

        public var isActive: Bool?

        public var name: String

        public var locationType: String

        public var mallName: String?

        public var updatedAt: String?

        public var companyId: Int

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var city: String

        public var pincode: String

        public var brandStoreTags: [String]?

        public var createdAt: String

        public var code: String?

        public var contactPerson: String

        public var country: String

        public var orderIntegrationId: String?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var address1: String

        public var storeActiveFrom: String?

        public var loginUsername: String

        public var storeEmail: String

        public var packagingMaterialCount: Int?

        public var longitude: Double

        public var mallArea: String?

        public var parentStoreId: Int?

        public var meta: StoreMeta

        public var latitude: Double

        public var sId: String

        public var isEnabledForRecon: Bool?

        public var isArchived: Bool?

        public var phone: Int

        public var address2: String?

        public var storeAddressJson: StoreAddress?

        public enum CodingKeys: String, CodingKey {
            case state

            case isActive = "is_active"

            case name

            case locationType = "location_type"

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case companyId = "company_id"

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case city

            case pincode

            case brandStoreTags = "brand_store_tags"

            case createdAt = "created_at"

            case code

            case contactPerson = "contact_person"

            case country

            case orderIntegrationId = "order_integration_id"

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case address1

            case storeActiveFrom = "store_active_from"

            case loginUsername = "login_username"

            case storeEmail = "store_email"

            case packagingMaterialCount = "packaging_material_count"

            case longitude

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case meta

            case latitude

            case sId = "s_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case isArchived = "is_archived"

            case phone

            case address2

            case storeAddressJson = "store_address_json"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.isActive = isActive

            self.name = name

            self.locationType = locationType

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.companyId = companyId

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.city = city

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.createdAt = createdAt

            self.code = code

            self.contactPerson = contactPerson

            self.country = country

            self.orderIntegrationId = orderIntegrationId

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.address1 = address1

            self.storeActiveFrom = storeActiveFrom

            self.loginUsername = loginUsername

            self.storeEmail = storeEmail

            self.packagingMaterialCount = packagingMaterialCount

            self.longitude = longitude

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.meta = meta

            self.latitude = latitude

            self.sId = sId

            self.isEnabledForRecon = isEnabledForRecon

            self.isArchived = isArchived

            self.phone = phone

            self.address2 = address2

            self.storeAddressJson = storeAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
        }
    }
}
