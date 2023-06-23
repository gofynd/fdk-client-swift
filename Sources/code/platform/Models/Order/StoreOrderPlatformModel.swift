

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var fulfillmentChannel: String

        public var isEnabledForRecon: Bool?

        public var name: String

        public var latitude: Double

        public var isArchived: Bool?

        public var storeActiveFrom: String?

        public var country: String

        public var locationType: String

        public var phone: Int

        public var updatedAt: String?

        public var sId: String

        public var isActive: Bool?

        public var storeAddressJson: StoreAddress?

        public var storeEmail: String

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var createdAt: String

        public var parentStoreId: Int?

        public var brandStoreTags: [String]?

        public var code: String?

        public var city: String

        public var state: String

        public var mallName: String?

        public var vatNo: String?

        public var contactPerson: String

        public var pincode: String

        public var address2: String?

        public var address1: String

        public var meta: StoreMeta

        public var longitude: Double

        public var packagingMaterialCount: Int?

        public var companyId: Int

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case isEnabledForRecon = "is_enabled_for_recon"

            case name

            case latitude

            case isArchived = "is_archived"

            case storeActiveFrom = "store_active_from"

            case country

            case locationType = "location_type"

            case phone

            case updatedAt = "updated_at"

            case sId = "s_id"

            case isActive = "is_active"

            case storeAddressJson = "store_address_json"

            case storeEmail = "store_email"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case createdAt = "created_at"

            case parentStoreId = "parent_store_id"

            case brandStoreTags = "brand_store_tags"

            case code

            case city

            case state

            case mallName = "mall_name"

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case pincode

            case address2

            case address1

            case meta

            case longitude

            case packagingMaterialCount = "packaging_material_count"

            case companyId = "company_id"

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.fulfillmentChannel = fulfillmentChannel

            self.isEnabledForRecon = isEnabledForRecon

            self.name = name

            self.latitude = latitude

            self.isArchived = isArchived

            self.storeActiveFrom = storeActiveFrom

            self.country = country

            self.locationType = locationType

            self.phone = phone

            self.updatedAt = updatedAt

            self.sId = sId

            self.isActive = isActive

            self.storeAddressJson = storeAddressJson

            self.storeEmail = storeEmail

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.createdAt = createdAt

            self.parentStoreId = parentStoreId

            self.brandStoreTags = brandStoreTags

            self.code = code

            self.city = city

            self.state = state

            self.mallName = mallName

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.address2 = address2

            self.address1 = address1

            self.meta = meta

            self.longitude = longitude

            self.packagingMaterialCount = packagingMaterialCount

            self.companyId = companyId

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

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
        public var fulfillmentChannel: String

        public var isEnabledForRecon: Bool?

        public var name: String

        public var latitude: Double

        public var isArchived: Bool?

        public var storeActiveFrom: String?

        public var country: String

        public var locationType: String

        public var phone: Int

        public var updatedAt: String?

        public var sId: String

        public var isActive: Bool?

        public var storeAddressJson: StoreAddress?

        public var storeEmail: String

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var createdAt: String

        public var parentStoreId: Int?

        public var brandStoreTags: [String]?

        public var code: String?

        public var city: String

        public var state: String

        public var mallName: String?

        public var vatNo: String?

        public var contactPerson: String

        public var pincode: String

        public var address2: String?

        public var address1: String

        public var meta: StoreMeta

        public var longitude: Double

        public var packagingMaterialCount: Int?

        public var companyId: Int

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case isEnabledForRecon = "is_enabled_for_recon"

            case name

            case latitude

            case isArchived = "is_archived"

            case storeActiveFrom = "store_active_from"

            case country

            case locationType = "location_type"

            case phone

            case updatedAt = "updated_at"

            case sId = "s_id"

            case isActive = "is_active"

            case storeAddressJson = "store_address_json"

            case storeEmail = "store_email"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case createdAt = "created_at"

            case parentStoreId = "parent_store_id"

            case brandStoreTags = "brand_store_tags"

            case code

            case city

            case state

            case mallName = "mall_name"

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case pincode

            case address2

            case address1

            case meta

            case longitude

            case packagingMaterialCount = "packaging_material_count"

            case companyId = "company_id"

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.fulfillmentChannel = fulfillmentChannel

            self.isEnabledForRecon = isEnabledForRecon

            self.name = name

            self.latitude = latitude

            self.isArchived = isArchived

            self.storeActiveFrom = storeActiveFrom

            self.country = country

            self.locationType = locationType

            self.phone = phone

            self.updatedAt = updatedAt

            self.sId = sId

            self.isActive = isActive

            self.storeAddressJson = storeAddressJson

            self.storeEmail = storeEmail

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.createdAt = createdAt

            self.parentStoreId = parentStoreId

            self.brandStoreTags = brandStoreTags

            self.code = code

            self.city = city

            self.state = state

            self.mallName = mallName

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.address2 = address2

            self.address1 = address1

            self.meta = meta

            self.longitude = longitude

            self.packagingMaterialCount = packagingMaterialCount

            self.companyId = companyId

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
        }
    }
}
