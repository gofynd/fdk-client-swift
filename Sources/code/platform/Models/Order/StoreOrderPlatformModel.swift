

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandId: [String: Any]?

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var locationType: String

        public var state: String

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var longitude: Double

        public var fulfillmentChannel: String

        public var country: String

        public var companyId: Int

        public var code: String?

        public var vatNo: String?

        public var contactPerson: String

        public var address2: String?

        public var city: String

        public var brandStoreTags: [String]?

        public var pincode: String

        public var address1: String

        public var latitude: Double

        public var name: String

        public var parentStoreId: Int?

        public var mallName: String?

        public var updatedAt: String?

        public var storeEmail: String

        public var alohomoraUserId: Int?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var phone: Int

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case locationType = "location_type"

            case state

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case longitude

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case companyId = "company_id"

            case code

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case address2

            case city

            case brandStoreTags = "brand_store_tags"

            case pincode

            case address1

            case latitude

            case name

            case parentStoreId = "parent_store_id"

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case storeEmail = "store_email"

            case alohomoraUserId = "alohomora_user_id"

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case phone

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandId = brandId

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.locationType = locationType

            self.state = state

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.longitude = longitude

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.companyId = companyId

            self.code = code

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.address2 = address2

            self.city = city

            self.brandStoreTags = brandStoreTags

            self.pincode = pincode

            self.address1 = address1

            self.latitude = latitude

            self.name = name

            self.parentStoreId = parentStoreId

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.storeEmail = storeEmail

            self.alohomoraUserId = alohomoraUserId

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.phone = phone

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            phone = try container.decode(Int.self, forKey: .phone)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(phone, forKey: .phone)

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
        public var brandId: [String: Any]?

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var locationType: String

        public var state: String

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var longitude: Double

        public var fulfillmentChannel: String

        public var country: String

        public var companyId: Int

        public var code: String?

        public var vatNo: String?

        public var contactPerson: String

        public var address2: String?

        public var city: String

        public var brandStoreTags: [String]?

        public var pincode: String

        public var address1: String

        public var latitude: Double

        public var name: String

        public var parentStoreId: Int?

        public var mallName: String?

        public var updatedAt: String?

        public var storeEmail: String

        public var alohomoraUserId: Int?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var phone: Int

        public var loginUsername: String

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case locationType = "location_type"

            case state

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case longitude

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case companyId = "company_id"

            case code

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case address2

            case city

            case brandStoreTags = "brand_store_tags"

            case pincode

            case address1

            case latitude

            case name

            case parentStoreId = "parent_store_id"

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case storeEmail = "store_email"

            case alohomoraUserId = "alohomora_user_id"

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case phone

            case loginUsername = "login_username"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandId = brandId

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.locationType = locationType

            self.state = state

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.longitude = longitude

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.companyId = companyId

            self.code = code

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.address2 = address2

            self.city = city

            self.brandStoreTags = brandStoreTags

            self.pincode = pincode

            self.address1 = address1

            self.latitude = latitude

            self.name = name

            self.parentStoreId = parentStoreId

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.storeEmail = storeEmail

            self.alohomoraUserId = alohomoraUserId

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.phone = phone

            self.loginUsername = loginUsername
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            phone = try container.decode(Int.self, forKey: .phone)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
        }
    }
}
