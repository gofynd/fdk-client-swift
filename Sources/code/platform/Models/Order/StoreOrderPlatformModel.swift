

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var companyId: Int

        public var code: String?

        public var longitude: Double

        public var fulfillmentChannel: String

        public var phone: Int

        public var createdAt: String

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var isActive: Bool?

        public var storeAddressJson: StoreAddress?

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var mallArea: String?

        public var state: String

        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var storeEmail: String

        public var latitude: Double

        public var country: String

        public var sId: String

        public var contactPerson: String

        public var pincode: String

        public var city: String

        public var packagingMaterialCount: Int?

        public var alohomoraUserId: Int?

        public var address1: String

        public var name: String

        public var vatNo: String?

        public var mallName: String?

        public var isArchived: Bool?

        public var address2: String?

        public var locationType: String

        public var parentStoreId: Int?

        public var updatedAt: String?

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case code

            case longitude

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case createdAt = "created_at"

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case isActive = "is_active"

            case storeAddressJson = "store_address_json"

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case mallArea = "mall_area"

            case state

            case storeActiveFrom = "store_active_from"

            case meta

            case storeEmail = "store_email"

            case latitude

            case country

            case sId = "s_id"

            case contactPerson = "contact_person"

            case pincode

            case city

            case packagingMaterialCount = "packaging_material_count"

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case name

            case vatNo = "vat_no"

            case mallName = "mall_name"

            case isArchived = "is_archived"

            case address2

            case locationType = "location_type"

            case parentStoreId = "parent_store_id"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.code = code

            self.longitude = longitude

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.createdAt = createdAt

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.isActive = isActive

            self.storeAddressJson = storeAddressJson

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.mallArea = mallArea

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.country = country

            self.sId = sId

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.city = city

            self.packagingMaterialCount = packagingMaterialCount

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.name = name

            self.vatNo = vatNo

            self.mallName = mallName

            self.isArchived = isArchived

            self.address2 = address2

            self.locationType = locationType

            self.parentStoreId = parentStoreId

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(Int.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            address1 = try container.decode(String.self, forKey: .address1)

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var companyId: Int

        public var code: String?

        public var longitude: Double

        public var fulfillmentChannel: String

        public var phone: Int

        public var createdAt: String

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var isActive: Bool?

        public var storeAddressJson: StoreAddress?

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var mallArea: String?

        public var state: String

        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var storeEmail: String

        public var latitude: Double

        public var country: String

        public var sId: String

        public var contactPerson: String

        public var pincode: String

        public var city: String

        public var packagingMaterialCount: Int?

        public var alohomoraUserId: Int?

        public var address1: String

        public var name: String

        public var vatNo: String?

        public var mallName: String?

        public var isArchived: Bool?

        public var address2: String?

        public var locationType: String

        public var parentStoreId: Int?

        public var updatedAt: String?

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case code

            case longitude

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case createdAt = "created_at"

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case isActive = "is_active"

            case storeAddressJson = "store_address_json"

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case mallArea = "mall_area"

            case state

            case storeActiveFrom = "store_active_from"

            case meta

            case storeEmail = "store_email"

            case latitude

            case country

            case sId = "s_id"

            case contactPerson = "contact_person"

            case pincode

            case city

            case packagingMaterialCount = "packaging_material_count"

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case name

            case vatNo = "vat_no"

            case mallName = "mall_name"

            case isArchived = "is_archived"

            case address2

            case locationType = "location_type"

            case parentStoreId = "parent_store_id"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.code = code

            self.longitude = longitude

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.createdAt = createdAt

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.isActive = isActive

            self.storeAddressJson = storeAddressJson

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.mallArea = mallArea

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.country = country

            self.sId = sId

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.city = city

            self.packagingMaterialCount = packagingMaterialCount

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.name = name

            self.vatNo = vatNo

            self.mallName = mallName

            self.isArchived = isArchived

            self.address2 = address2

            self.locationType = locationType

            self.parentStoreId = parentStoreId

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(Int.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            address1 = try container.decode(String.self, forKey: .address1)

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
        }
    }
}
