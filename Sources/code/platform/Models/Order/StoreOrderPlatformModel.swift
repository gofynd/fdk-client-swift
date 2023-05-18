

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallArea: String?

        public var phone: Int

        public var vatNo: String?

        public var updatedAt: String?

        public var storeAddressJson: StoreAddress?

        public var storeEmail: String

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var parentStoreId: Int?

        public var companyId: Int

        public var latitude: Double

        public var state: String

        public var pincode: String

        public var locationType: String

        public var meta: StoreMeta

        public var createdAt: String

        public var country: String

        public var alohomoraUserId: Int?

        public var mallName: String?

        public var longitude: Double

        public var packagingMaterialCount: Int?

        public var storeActiveFrom: String?

        public var address1: String

        public var contactPerson: String

        public var name: String

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var isArchived: Bool?

        public var brandId: [String: Any]?

        public var code: String?

        public var city: String

        public var isEnabledForRecon: Bool?

        public var sId: String

        public var address2: String?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case mallArea = "mall_area"

            case phone

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case storeAddressJson = "store_address_json"

            case storeEmail = "store_email"

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case latitude

            case state

            case pincode

            case locationType = "location_type"

            case meta

            case createdAt = "created_at"

            case country

            case alohomoraUserId = "alohomora_user_id"

            case mallName = "mall_name"

            case longitude

            case packagingMaterialCount = "packaging_material_count"

            case storeActiveFrom = "store_active_from"

            case address1

            case contactPerson = "contact_person"

            case name

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case isArchived = "is_archived"

            case brandId = "brand_id"

            case code

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case sId = "s_id"

            case address2

            case isActive = "is_active"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallArea = mallArea

            self.phone = phone

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.storeAddressJson = storeAddressJson

            self.storeEmail = storeEmail

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.latitude = latitude

            self.state = state

            self.pincode = pincode

            self.locationType = locationType

            self.meta = meta

            self.createdAt = createdAt

            self.country = country

            self.alohomoraUserId = alohomoraUserId

            self.mallName = mallName

            self.longitude = longitude

            self.packagingMaterialCount = packagingMaterialCount

            self.storeActiveFrom = storeActiveFrom

            self.address1 = address1

            self.contactPerson = contactPerson

            self.name = name

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.isArchived = isArchived

            self.brandId = brandId

            self.code = code

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.sId = sId

            self.address2 = address2

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            name = try container.decode(String.self, forKey: .name)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallArea: String?

        public var phone: Int

        public var vatNo: String?

        public var updatedAt: String?

        public var storeAddressJson: StoreAddress?

        public var storeEmail: String

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var parentStoreId: Int?

        public var companyId: Int

        public var latitude: Double

        public var state: String

        public var pincode: String

        public var locationType: String

        public var meta: StoreMeta

        public var createdAt: String

        public var country: String

        public var alohomoraUserId: Int?

        public var mallName: String?

        public var longitude: Double

        public var packagingMaterialCount: Int?

        public var storeActiveFrom: String?

        public var address1: String

        public var contactPerson: String

        public var name: String

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var isArchived: Bool?

        public var brandId: [String: Any]?

        public var code: String?

        public var city: String

        public var isEnabledForRecon: Bool?

        public var sId: String

        public var address2: String?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case mallArea = "mall_area"

            case phone

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case storeAddressJson = "store_address_json"

            case storeEmail = "store_email"

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case latitude

            case state

            case pincode

            case locationType = "location_type"

            case meta

            case createdAt = "created_at"

            case country

            case alohomoraUserId = "alohomora_user_id"

            case mallName = "mall_name"

            case longitude

            case packagingMaterialCount = "packaging_material_count"

            case storeActiveFrom = "store_active_from"

            case address1

            case contactPerson = "contact_person"

            case name

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case isArchived = "is_archived"

            case brandId = "brand_id"

            case code

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case sId = "s_id"

            case address2

            case isActive = "is_active"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallArea = mallArea

            self.phone = phone

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.storeAddressJson = storeAddressJson

            self.storeEmail = storeEmail

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.latitude = latitude

            self.state = state

            self.pincode = pincode

            self.locationType = locationType

            self.meta = meta

            self.createdAt = createdAt

            self.country = country

            self.alohomoraUserId = alohomoraUserId

            self.mallName = mallName

            self.longitude = longitude

            self.packagingMaterialCount = packagingMaterialCount

            self.storeActiveFrom = storeActiveFrom

            self.address1 = address1

            self.contactPerson = contactPerson

            self.name = name

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.isArchived = isArchived

            self.brandId = brandId

            self.code = code

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.sId = sId

            self.address2 = address2

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            name = try container.decode(String.self, forKey: .name)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
