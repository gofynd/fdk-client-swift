

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var locationType: String

        public var mallArea: String?

        public var parentStoreId: Int?

        public var state: String

        public var isActive: Bool?

        public var updatedAt: String?

        public var contactPerson: String

        public var phone: Int

        public var vatNo: String?

        public var packagingMaterialCount: Int?

        public var latitude: Double

        public var brandId: [String: Any]?

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var name: String

        public var mallName: String?

        public var pincode: String

        public var longitude: Double

        public var sId: String

        public var address2: String?

        public var brandStoreTags: [String]?

        public var loginUsername: String

        public var storeEmail: String

        public var createdAt: String

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var city: String

        public var address1: String

        public var companyId: Int

        public var meta: StoreMeta

        public var fulfillmentChannel: String

        public var country: String

        public var storeActiveFrom: String?

        public var storeAddressJson: StoreAddress?

        public enum CodingKeys: String, CodingKey {
            case locationType = "location_type"

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case state

            case isActive = "is_active"

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case phone

            case vatNo = "vat_no"

            case packagingMaterialCount = "packaging_material_count"

            case latitude

            case brandId = "brand_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case name

            case mallName = "mall_name"

            case pincode

            case longitude

            case sId = "s_id"

            case address2

            case brandStoreTags = "brand_store_tags"

            case loginUsername = "login_username"

            case storeEmail = "store_email"

            case createdAt = "created_at"

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case city

            case address1

            case companyId = "company_id"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case storeActiveFrom = "store_active_from"

            case storeAddressJson = "store_address_json"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.locationType = locationType

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.state = state

            self.isActive = isActive

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.phone = phone

            self.vatNo = vatNo

            self.packagingMaterialCount = packagingMaterialCount

            self.latitude = latitude

            self.brandId = brandId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.name = name

            self.mallName = mallName

            self.pincode = pincode

            self.longitude = longitude

            self.sId = sId

            self.address2 = address2

            self.brandStoreTags = brandStoreTags

            self.loginUsername = loginUsername

            self.storeEmail = storeEmail

            self.createdAt = createdAt

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.city = city

            self.address1 = address1

            self.companyId = companyId

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.storeActiveFrom = storeActiveFrom

            self.storeAddressJson = storeAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            locationType = try container.decode(String.self, forKey: .locationType)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

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
        public var locationType: String

        public var mallArea: String?

        public var parentStoreId: Int?

        public var state: String

        public var isActive: Bool?

        public var updatedAt: String?

        public var contactPerson: String

        public var phone: Int

        public var vatNo: String?

        public var packagingMaterialCount: Int?

        public var latitude: Double

        public var brandId: [String: Any]?

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var name: String

        public var mallName: String?

        public var pincode: String

        public var longitude: Double

        public var sId: String

        public var address2: String?

        public var brandStoreTags: [String]?

        public var loginUsername: String

        public var storeEmail: String

        public var createdAt: String

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var city: String

        public var address1: String

        public var companyId: Int

        public var meta: StoreMeta

        public var fulfillmentChannel: String

        public var country: String

        public var storeActiveFrom: String?

        public var storeAddressJson: StoreAddress?

        public enum CodingKeys: String, CodingKey {
            case locationType = "location_type"

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case state

            case isActive = "is_active"

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case phone

            case vatNo = "vat_no"

            case packagingMaterialCount = "packaging_material_count"

            case latitude

            case brandId = "brand_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case name

            case mallName = "mall_name"

            case pincode

            case longitude

            case sId = "s_id"

            case address2

            case brandStoreTags = "brand_store_tags"

            case loginUsername = "login_username"

            case storeEmail = "store_email"

            case createdAt = "created_at"

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case city

            case address1

            case companyId = "company_id"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case storeActiveFrom = "store_active_from"

            case storeAddressJson = "store_address_json"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.locationType = locationType

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.state = state

            self.isActive = isActive

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.phone = phone

            self.vatNo = vatNo

            self.packagingMaterialCount = packagingMaterialCount

            self.latitude = latitude

            self.brandId = brandId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.name = name

            self.mallName = mallName

            self.pincode = pincode

            self.longitude = longitude

            self.sId = sId

            self.address2 = address2

            self.brandStoreTags = brandStoreTags

            self.loginUsername = loginUsername

            self.storeEmail = storeEmail

            self.createdAt = createdAt

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.city = city

            self.address1 = address1

            self.companyId = companyId

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.storeActiveFrom = storeActiveFrom

            self.storeAddressJson = storeAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            locationType = try container.decode(String.self, forKey: .locationType)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
        }
    }
}
