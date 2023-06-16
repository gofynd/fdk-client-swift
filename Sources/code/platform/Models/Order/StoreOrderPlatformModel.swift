

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var loginUsername: String

        public var fulfillmentChannel: String

        public var alohomoraUserId: Int?

        public var storeEmail: String

        public var sId: String

        public var isArchived: Bool?

        public var latitude: Double

        public var meta: StoreMeta

        public var pincode: String

        public var packagingMaterialCount: Int?

        public var name: String

        public var orderIntegrationId: String?

        public var contactPerson: String

        public var longitude: Double

        public var brandStoreTags: [String]?

        public var address2: String?

        public var address1: String

        public var locationType: String

        public var state: String

        public var updatedAt: String?

        public var phone: Int

        public var parentStoreId: Int?

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var mallArea: String?

        public var isActive: Bool?

        public var code: String?

        public var createdAt: String

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var storeActiveFrom: String?

        public var companyId: Int

        public var isEnabledForRecon: Bool?

        public var mallName: String?

        public enum CodingKeys: String, CodingKey {
            case loginUsername = "login_username"

            case fulfillmentChannel = "fulfillment_channel"

            case alohomoraUserId = "alohomora_user_id"

            case storeEmail = "store_email"

            case sId = "s_id"

            case isArchived = "is_archived"

            case latitude

            case meta

            case pincode

            case packagingMaterialCount = "packaging_material_count"

            case name

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"

            case longitude

            case brandStoreTags = "brand_store_tags"

            case address2

            case address1

            case locationType = "location_type"

            case state

            case updatedAt = "updated_at"

            case phone

            case parentStoreId = "parent_store_id"

            case city

            case storeAddressJson = "store_address_json"

            case country

            case mallArea = "mall_area"

            case isActive = "is_active"

            case code

            case createdAt = "created_at"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case storeActiveFrom = "store_active_from"

            case companyId = "company_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallName = "mall_name"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.loginUsername = loginUsername

            self.fulfillmentChannel = fulfillmentChannel

            self.alohomoraUserId = alohomoraUserId

            self.storeEmail = storeEmail

            self.sId = sId

            self.isArchived = isArchived

            self.latitude = latitude

            self.meta = meta

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount

            self.name = name

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.brandStoreTags = brandStoreTags

            self.address2 = address2

            self.address1 = address1

            self.locationType = locationType

            self.state = state

            self.updatedAt = updatedAt

            self.phone = phone

            self.parentStoreId = parentStoreId

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.mallArea = mallArea

            self.isActive = isActive

            self.code = code

            self.createdAt = createdAt

            self.vatNo = vatNo

            self.brandId = brandId

            self.storeActiveFrom = storeActiveFrom

            self.companyId = companyId

            self.isEnabledForRecon = isEnabledForRecon

            self.mallName = mallName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallName, forKey: .mallName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var loginUsername: String

        public var fulfillmentChannel: String

        public var alohomoraUserId: Int?

        public var storeEmail: String

        public var sId: String

        public var isArchived: Bool?

        public var latitude: Double

        public var meta: StoreMeta

        public var pincode: String

        public var packagingMaterialCount: Int?

        public var name: String

        public var orderIntegrationId: String?

        public var contactPerson: String

        public var longitude: Double

        public var brandStoreTags: [String]?

        public var address2: String?

        public var address1: String

        public var locationType: String

        public var state: String

        public var updatedAt: String?

        public var phone: Int

        public var parentStoreId: Int?

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var mallArea: String?

        public var isActive: Bool?

        public var code: String?

        public var createdAt: String

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var storeActiveFrom: String?

        public var companyId: Int

        public var isEnabledForRecon: Bool?

        public var mallName: String?

        public enum CodingKeys: String, CodingKey {
            case loginUsername = "login_username"

            case fulfillmentChannel = "fulfillment_channel"

            case alohomoraUserId = "alohomora_user_id"

            case storeEmail = "store_email"

            case sId = "s_id"

            case isArchived = "is_archived"

            case latitude

            case meta

            case pincode

            case packagingMaterialCount = "packaging_material_count"

            case name

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"

            case longitude

            case brandStoreTags = "brand_store_tags"

            case address2

            case address1

            case locationType = "location_type"

            case state

            case updatedAt = "updated_at"

            case phone

            case parentStoreId = "parent_store_id"

            case city

            case storeAddressJson = "store_address_json"

            case country

            case mallArea = "mall_area"

            case isActive = "is_active"

            case code

            case createdAt = "created_at"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case storeActiveFrom = "store_active_from"

            case companyId = "company_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallName = "mall_name"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.loginUsername = loginUsername

            self.fulfillmentChannel = fulfillmentChannel

            self.alohomoraUserId = alohomoraUserId

            self.storeEmail = storeEmail

            self.sId = sId

            self.isArchived = isArchived

            self.latitude = latitude

            self.meta = meta

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount

            self.name = name

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.brandStoreTags = brandStoreTags

            self.address2 = address2

            self.address1 = address1

            self.locationType = locationType

            self.state = state

            self.updatedAt = updatedAt

            self.phone = phone

            self.parentStoreId = parentStoreId

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.mallArea = mallArea

            self.isActive = isActive

            self.code = code

            self.createdAt = createdAt

            self.vatNo = vatNo

            self.brandId = brandId

            self.storeActiveFrom = storeActiveFrom

            self.companyId = companyId

            self.isEnabledForRecon = isEnabledForRecon

            self.mallName = mallName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallName, forKey: .mallName)
        }
    }
}
