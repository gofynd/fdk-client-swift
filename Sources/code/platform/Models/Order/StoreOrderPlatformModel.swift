

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var city: String

        public var alohomoraUserId: Int?

        public var contactPerson: String

        public var parentStoreId: Int?

        public var orderIntegrationId: String?

        public var pincode: String

        public var companyId: Int

        public var isArchived: Bool?

        public var country: String

        public var address2: String?

        public var packagingMaterialCount: Int?

        public var code: String?

        public var createdAt: String

        public var phone: Int

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var brandStoreTags: [String]?

        public var isEnabledForRecon: Bool?

        public var brandId: [String: Any]?

        public var mallArea: String?

        public var updatedAt: String?

        public var isActive: Bool?

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var meta: StoreMeta

        public var mallName: String?

        public var latitude: Double

        public var locationType: String

        public var sId: String

        public var fulfillmentChannel: String

        public var name: String

        public var address1: String

        public var loginUsername: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case city

            case alohomoraUserId = "alohomora_user_id"

            case contactPerson = "contact_person"

            case parentStoreId = "parent_store_id"

            case orderIntegrationId = "order_integration_id"

            case pincode

            case companyId = "company_id"

            case isArchived = "is_archived"

            case country

            case address2

            case packagingMaterialCount = "packaging_material_count"

            case code

            case createdAt = "created_at"

            case phone

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case brandStoreTags = "brand_store_tags"

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandId = "brand_id"

            case mallArea = "mall_area"

            case updatedAt = "updated_at"

            case isActive = "is_active"

            case storeAddressJson = "store_address_json"

            case longitude

            case meta

            case mallName = "mall_name"

            case latitude

            case locationType = "location_type"

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case name

            case address1

            case loginUsername = "login_username"

            case state
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.city = city

            self.alohomoraUserId = alohomoraUserId

            self.contactPerson = contactPerson

            self.parentStoreId = parentStoreId

            self.orderIntegrationId = orderIntegrationId

            self.pincode = pincode

            self.companyId = companyId

            self.isArchived = isArchived

            self.country = country

            self.address2 = address2

            self.packagingMaterialCount = packagingMaterialCount

            self.code = code

            self.createdAt = createdAt

            self.phone = phone

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.brandStoreTags = brandStoreTags

            self.isEnabledForRecon = isEnabledForRecon

            self.brandId = brandId

            self.mallArea = mallArea

            self.updatedAt = updatedAt

            self.isActive = isActive

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.meta = meta

            self.mallName = mallName

            self.latitude = latitude

            self.locationType = locationType

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.name = name

            self.address1 = address1

            self.loginUsername = loginUsername

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(Int.self, forKey: .phone)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            name = try container.decode(String.self, forKey: .name)

            address1 = try container.decode(String.self, forKey: .address1)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

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
        public var city: String

        public var alohomoraUserId: Int?

        public var contactPerson: String

        public var parentStoreId: Int?

        public var orderIntegrationId: String?

        public var pincode: String

        public var companyId: Int

        public var isArchived: Bool?

        public var country: String

        public var address2: String?

        public var packagingMaterialCount: Int?

        public var code: String?

        public var createdAt: String

        public var phone: Int

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var brandStoreTags: [String]?

        public var isEnabledForRecon: Bool?

        public var brandId: [String: Any]?

        public var mallArea: String?

        public var updatedAt: String?

        public var isActive: Bool?

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var meta: StoreMeta

        public var mallName: String?

        public var latitude: Double

        public var locationType: String

        public var sId: String

        public var fulfillmentChannel: String

        public var name: String

        public var address1: String

        public var loginUsername: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case city

            case alohomoraUserId = "alohomora_user_id"

            case contactPerson = "contact_person"

            case parentStoreId = "parent_store_id"

            case orderIntegrationId = "order_integration_id"

            case pincode

            case companyId = "company_id"

            case isArchived = "is_archived"

            case country

            case address2

            case packagingMaterialCount = "packaging_material_count"

            case code

            case createdAt = "created_at"

            case phone

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case brandStoreTags = "brand_store_tags"

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandId = "brand_id"

            case mallArea = "mall_area"

            case updatedAt = "updated_at"

            case isActive = "is_active"

            case storeAddressJson = "store_address_json"

            case longitude

            case meta

            case mallName = "mall_name"

            case latitude

            case locationType = "location_type"

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case name

            case address1

            case loginUsername = "login_username"

            case state
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.city = city

            self.alohomoraUserId = alohomoraUserId

            self.contactPerson = contactPerson

            self.parentStoreId = parentStoreId

            self.orderIntegrationId = orderIntegrationId

            self.pincode = pincode

            self.companyId = companyId

            self.isArchived = isArchived

            self.country = country

            self.address2 = address2

            self.packagingMaterialCount = packagingMaterialCount

            self.code = code

            self.createdAt = createdAt

            self.phone = phone

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.brandStoreTags = brandStoreTags

            self.isEnabledForRecon = isEnabledForRecon

            self.brandId = brandId

            self.mallArea = mallArea

            self.updatedAt = updatedAt

            self.isActive = isActive

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.meta = meta

            self.mallName = mallName

            self.latitude = latitude

            self.locationType = locationType

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.name = name

            self.address1 = address1

            self.loginUsername = loginUsername

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(Int.self, forKey: .phone)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            name = try container.decode(String.self, forKey: .name)

            address1 = try container.decode(String.self, forKey: .address1)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
