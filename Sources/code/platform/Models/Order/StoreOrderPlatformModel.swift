

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var country: String

        public var orderIntegrationId: String?

        public var code: String?

        public var storeEmail: String

        public var pincode: String

        public var storeActiveFrom: String?

        public var storeAddressJson: StoreAddress?

        public var loginUsername: String

        public var name: String

        public var createdAt: String

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var address1: String

        public var phone: Int

        public var isArchived: Bool?

        public var isActive: Bool?

        public var longitude: Double

        public var mallName: String?

        public var latitude: Double

        public var isEnabledForRecon: Bool?

        public var brandId: [String: Any]?

        public var address2: String?

        public var contactPerson: String

        public var meta: StoreMeta

        public var mallArea: String?

        public var locationType: String

        public var sId: String

        public var city: String

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var updatedAt: String?

        public var companyId: Int

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case country

            case orderIntegrationId = "order_integration_id"

            case code

            case storeEmail = "store_email"

            case pincode

            case storeActiveFrom = "store_active_from"

            case storeAddressJson = "store_address_json"

            case loginUsername = "login_username"

            case name

            case createdAt = "created_at"

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case address1

            case phone

            case isArchived = "is_archived"

            case isActive = "is_active"

            case longitude

            case mallName = "mall_name"

            case latitude

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandId = "brand_id"

            case address2

            case contactPerson = "contact_person"

            case meta

            case mallArea = "mall_area"

            case locationType = "location_type"

            case sId = "s_id"

            case city

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case updatedAt = "updated_at"

            case companyId = "company_id"

            case state
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.country = country

            self.orderIntegrationId = orderIntegrationId

            self.code = code

            self.storeEmail = storeEmail

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.storeAddressJson = storeAddressJson

            self.loginUsername = loginUsername

            self.name = name

            self.createdAt = createdAt

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.phone = phone

            self.isArchived = isArchived

            self.isActive = isActive

            self.longitude = longitude

            self.mallName = mallName

            self.latitude = latitude

            self.isEnabledForRecon = isEnabledForRecon

            self.brandId = brandId

            self.address2 = address2

            self.contactPerson = contactPerson

            self.meta = meta

            self.mallArea = mallArea

            self.locationType = locationType

            self.sId = sId

            self.city = city

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.updatedAt = updatedAt

            self.companyId = companyId

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            sId = try container.decode(String.self, forKey: .sId)

            city = try container.decode(String.self, forKey: .city)

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

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var country: String

        public var orderIntegrationId: String?

        public var code: String?

        public var storeEmail: String

        public var pincode: String

        public var storeActiveFrom: String?

        public var storeAddressJson: StoreAddress?

        public var loginUsername: String

        public var name: String

        public var createdAt: String

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var address1: String

        public var phone: Int

        public var isArchived: Bool?

        public var isActive: Bool?

        public var longitude: Double

        public var mallName: String?

        public var latitude: Double

        public var isEnabledForRecon: Bool?

        public var brandId: [String: Any]?

        public var address2: String?

        public var contactPerson: String

        public var meta: StoreMeta

        public var mallArea: String?

        public var locationType: String

        public var sId: String

        public var city: String

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var updatedAt: String?

        public var companyId: Int

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case country

            case orderIntegrationId = "order_integration_id"

            case code

            case storeEmail = "store_email"

            case pincode

            case storeActiveFrom = "store_active_from"

            case storeAddressJson = "store_address_json"

            case loginUsername = "login_username"

            case name

            case createdAt = "created_at"

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case address1

            case phone

            case isArchived = "is_archived"

            case isActive = "is_active"

            case longitude

            case mallName = "mall_name"

            case latitude

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandId = "brand_id"

            case address2

            case contactPerson = "contact_person"

            case meta

            case mallArea = "mall_area"

            case locationType = "location_type"

            case sId = "s_id"

            case city

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case updatedAt = "updated_at"

            case companyId = "company_id"

            case state
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.country = country

            self.orderIntegrationId = orderIntegrationId

            self.code = code

            self.storeEmail = storeEmail

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.storeAddressJson = storeAddressJson

            self.loginUsername = loginUsername

            self.name = name

            self.createdAt = createdAt

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.phone = phone

            self.isArchived = isArchived

            self.isActive = isActive

            self.longitude = longitude

            self.mallName = mallName

            self.latitude = latitude

            self.isEnabledForRecon = isEnabledForRecon

            self.brandId = brandId

            self.address2 = address2

            self.contactPerson = contactPerson

            self.meta = meta

            self.mallArea = mallArea

            self.locationType = locationType

            self.sId = sId

            self.city = city

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.updatedAt = updatedAt

            self.companyId = companyId

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            sId = try container.decode(String.self, forKey: .sId)

            city = try container.decode(String.self, forKey: .city)

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

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
