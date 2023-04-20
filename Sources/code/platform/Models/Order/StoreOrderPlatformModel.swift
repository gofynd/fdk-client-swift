

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isActive: Bool?

        public var sId: String

        public var address1: String

        public var isArchived: Bool?

        public var name: String

        public var isEnabledForRecon: Bool?

        public var vatNo: String?

        public var address2: String?

        public var storeEmail: String

        public var packagingMaterialCount: Int?

        public var pincode: String

        public var mallArea: String?

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public var city: String

        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var longitude: Double

        public var country: String

        public var fulfillmentChannel: String

        public var locationType: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var createdAt: String

        public var alohomoraUserId: Int?

        public var companyId: Int

        public var mallName: String?

        public var code: String?

        public var contactPerson: String

        public var orderIntegrationId: String?

        public var state: String

        public var updatedAt: String?

        public var parentStoreId: Int?

        public var brandId: [String: Any]?

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case sId = "s_id"

            case address1

            case isArchived = "is_archived"

            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case vatNo = "vat_no"

            case address2

            case storeEmail = "store_email"

            case packagingMaterialCount = "packaging_material_count"

            case pincode

            case mallArea = "mall_area"

            case phone

            case storeAddressJson = "store_address_json"

            case city

            case storeActiveFrom = "store_active_from"

            case meta

            case longitude

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case locationType = "location_type"

            case brandStoreTags = "brand_store_tags"

            case latitude

            case createdAt = "created_at"

            case alohomoraUserId = "alohomora_user_id"

            case companyId = "company_id"

            case mallName = "mall_name"

            case code

            case contactPerson = "contact_person"

            case orderIntegrationId = "order_integration_id"

            case state

            case updatedAt = "updated_at"

            case parentStoreId = "parent_store_id"

            case brandId = "brand_id"

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isActive = isActive

            self.sId = sId

            self.address1 = address1

            self.isArchived = isArchived

            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.vatNo = vatNo

            self.address2 = address2

            self.storeEmail = storeEmail

            self.packagingMaterialCount = packagingMaterialCount

            self.pincode = pincode

            self.mallArea = mallArea

            self.phone = phone

            self.storeAddressJson = storeAddressJson

            self.city = city

            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.longitude = longitude

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.locationType = locationType

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.createdAt = createdAt

            self.alohomoraUserId = alohomoraUserId

            self.companyId = companyId

            self.mallName = mallName

            self.code = code

            self.contactPerson = contactPerson

            self.orderIntegrationId = orderIntegrationId

            self.state = state

            self.updatedAt = updatedAt

            self.parentStoreId = parentStoreId

            self.brandId = brandId

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(brandId, forKey: .brandId)

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
        public var isActive: Bool?

        public var sId: String

        public var address1: String

        public var isArchived: Bool?

        public var name: String

        public var isEnabledForRecon: Bool?

        public var vatNo: String?

        public var address2: String?

        public var storeEmail: String

        public var packagingMaterialCount: Int?

        public var pincode: String

        public var mallArea: String?

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public var city: String

        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var longitude: Double

        public var country: String

        public var fulfillmentChannel: String

        public var locationType: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var createdAt: String

        public var alohomoraUserId: Int?

        public var companyId: Int

        public var mallName: String?

        public var code: String?

        public var contactPerson: String

        public var orderIntegrationId: String?

        public var state: String

        public var updatedAt: String?

        public var parentStoreId: Int?

        public var brandId: [String: Any]?

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case sId = "s_id"

            case address1

            case isArchived = "is_archived"

            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case vatNo = "vat_no"

            case address2

            case storeEmail = "store_email"

            case packagingMaterialCount = "packaging_material_count"

            case pincode

            case mallArea = "mall_area"

            case phone

            case storeAddressJson = "store_address_json"

            case city

            case storeActiveFrom = "store_active_from"

            case meta

            case longitude

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case locationType = "location_type"

            case brandStoreTags = "brand_store_tags"

            case latitude

            case createdAt = "created_at"

            case alohomoraUserId = "alohomora_user_id"

            case companyId = "company_id"

            case mallName = "mall_name"

            case code

            case contactPerson = "contact_person"

            case orderIntegrationId = "order_integration_id"

            case state

            case updatedAt = "updated_at"

            case parentStoreId = "parent_store_id"

            case brandId = "brand_id"

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isActive = isActive

            self.sId = sId

            self.address1 = address1

            self.isArchived = isArchived

            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.vatNo = vatNo

            self.address2 = address2

            self.storeEmail = storeEmail

            self.packagingMaterialCount = packagingMaterialCount

            self.pincode = pincode

            self.mallArea = mallArea

            self.phone = phone

            self.storeAddressJson = storeAddressJson

            self.city = city

            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.longitude = longitude

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.locationType = locationType

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.createdAt = createdAt

            self.alohomoraUserId = alohomoraUserId

            self.companyId = companyId

            self.mallName = mallName

            self.code = code

            self.contactPerson = contactPerson

            self.orderIntegrationId = orderIntegrationId

            self.state = state

            self.updatedAt = updatedAt

            self.parentStoreId = parentStoreId

            self.brandId = brandId

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
        }
    }
}
