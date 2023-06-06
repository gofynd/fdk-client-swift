

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var updatedAt: String?

        public var createdAt: String

        public var sId: String

        public var mallName: String?

        public var address1: String

        public var isEnabledForRecon: Bool?

        public var contactPerson: String

        public var loginUsername: String

        public var longitude: Double

        public var parentStoreId: Int?

        public var mallArea: String?

        public var code: String?

        public var latitude: Double

        public var country: String

        public var fulfillmentChannel: String

        public var address2: String?

        public var brandId: [String: Any]?

        public var locationType: String

        public var orderIntegrationId: String?

        public var companyId: Int

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var state: String

        public var isActive: Bool?

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var name: String

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var brandStoreTags: [String]?

        public var meta: StoreMeta

        public var packagingMaterialCount: Int?

        public var storeEmail: String

        public var city: String

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case sId = "s_id"

            case mallName = "mall_name"

            case address1

            case isEnabledForRecon = "is_enabled_for_recon"

            case contactPerson = "contact_person"

            case loginUsername = "login_username"

            case longitude

            case parentStoreId = "parent_store_id"

            case mallArea = "mall_area"

            case code

            case latitude

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case address2

            case brandId = "brand_id"

            case locationType = "location_type"

            case orderIntegrationId = "order_integration_id"

            case companyId = "company_id"

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case state

            case isActive = "is_active"

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case name

            case pincode

            case storeAddressJson = "store_address_json"

            case brandStoreTags = "brand_store_tags"

            case meta

            case packagingMaterialCount = "packaging_material_count"

            case storeEmail = "store_email"

            case city

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.sId = sId

            self.mallName = mallName

            self.address1 = address1

            self.isEnabledForRecon = isEnabledForRecon

            self.contactPerson = contactPerson

            self.loginUsername = loginUsername

            self.longitude = longitude

            self.parentStoreId = parentStoreId

            self.mallArea = mallArea

            self.code = code

            self.latitude = latitude

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.address2 = address2

            self.brandId = brandId

            self.locationType = locationType

            self.orderIntegrationId = orderIntegrationId

            self.companyId = companyId

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.state = state

            self.isActive = isActive

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.name = name

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.brandStoreTags = brandStoreTags

            self.meta = meta

            self.packagingMaterialCount = packagingMaterialCount

            self.storeEmail = storeEmail

            self.city = city

            self.phone = phone
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

            sId = try container.decode(String.self, forKey: .sId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)
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

        public var sId: String

        public var mallName: String?

        public var address1: String

        public var isEnabledForRecon: Bool?

        public var contactPerson: String

        public var loginUsername: String

        public var longitude: Double

        public var parentStoreId: Int?

        public var mallArea: String?

        public var code: String?

        public var latitude: Double

        public var country: String

        public var fulfillmentChannel: String

        public var address2: String?

        public var brandId: [String: Any]?

        public var locationType: String

        public var orderIntegrationId: String?

        public var companyId: Int

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var state: String

        public var isActive: Bool?

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var name: String

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var brandStoreTags: [String]?

        public var meta: StoreMeta

        public var packagingMaterialCount: Int?

        public var storeEmail: String

        public var city: String

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case sId = "s_id"

            case mallName = "mall_name"

            case address1

            case isEnabledForRecon = "is_enabled_for_recon"

            case contactPerson = "contact_person"

            case loginUsername = "login_username"

            case longitude

            case parentStoreId = "parent_store_id"

            case mallArea = "mall_area"

            case code

            case latitude

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case address2

            case brandId = "brand_id"

            case locationType = "location_type"

            case orderIntegrationId = "order_integration_id"

            case companyId = "company_id"

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case state

            case isActive = "is_active"

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case name

            case pincode

            case storeAddressJson = "store_address_json"

            case brandStoreTags = "brand_store_tags"

            case meta

            case packagingMaterialCount = "packaging_material_count"

            case storeEmail = "store_email"

            case city

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.sId = sId

            self.mallName = mallName

            self.address1 = address1

            self.isEnabledForRecon = isEnabledForRecon

            self.contactPerson = contactPerson

            self.loginUsername = loginUsername

            self.longitude = longitude

            self.parentStoreId = parentStoreId

            self.mallArea = mallArea

            self.code = code

            self.latitude = latitude

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.address2 = address2

            self.brandId = brandId

            self.locationType = locationType

            self.orderIntegrationId = orderIntegrationId

            self.companyId = companyId

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.state = state

            self.isActive = isActive

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.name = name

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.brandStoreTags = brandStoreTags

            self.meta = meta

            self.packagingMaterialCount = packagingMaterialCount

            self.storeEmail = storeEmail

            self.city = city

            self.phone = phone
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

            sId = try container.decode(String.self, forKey: .sId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
