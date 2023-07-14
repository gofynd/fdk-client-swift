

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandStoreTags: [String]?

        public var meta: StoreMeta

        public var locationType: String

        public var createdAt: String

        public var contactPerson: String

        public var phone: Int

        public var isEnabledForRecon: Bool?

        public var address2: String?

        public var parentStoreId: Int?

        public var longitude: Double

        public var loginUsername: String

        public var sId: String

        public var pincode: String

        public var mallArea: String?

        public var mallName: String?

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var alohomoraUserId: Int?

        public var companyId: Int

        public var name: String

        public var storeEmail: String

        public var updatedAt: String?

        public var orderIntegrationId: String?

        public var isActive: Bool?

        public var code: String?

        public var latitude: Double

        public var vatNo: String?

        public var address1: String

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var brandId: [String: Any]?

        public var state: String

        public var storeActiveFrom: String?

        public var fulfillmentChannel: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case brandStoreTags = "brand_store_tags"

            case meta

            case locationType = "location_type"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case address2

            case parentStoreId = "parent_store_id"

            case longitude

            case loginUsername = "login_username"

            case sId = "s_id"

            case pincode

            case mallArea = "mall_area"

            case mallName = "mall_name"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case alohomoraUserId = "alohomora_user_id"

            case companyId = "company_id"

            case name

            case storeEmail = "store_email"

            case updatedAt = "updated_at"

            case orderIntegrationId = "order_integration_id"

            case isActive = "is_active"

            case code

            case latitude

            case vatNo = "vat_no"

            case address1

            case city

            case storeAddressJson = "store_address_json"

            case brandId = "brand_id"

            case state

            case storeActiveFrom = "store_active_from"

            case fulfillmentChannel = "fulfillment_channel"

            case country
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandStoreTags = brandStoreTags

            self.meta = meta

            self.locationType = locationType

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.address2 = address2

            self.parentStoreId = parentStoreId

            self.longitude = longitude

            self.loginUsername = loginUsername

            self.sId = sId

            self.pincode = pincode

            self.mallArea = mallArea

            self.mallName = mallName

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.alohomoraUserId = alohomoraUserId

            self.companyId = companyId

            self.name = name

            self.storeEmail = storeEmail

            self.updatedAt = updatedAt

            self.orderIntegrationId = orderIntegrationId

            self.isActive = isActive

            self.code = code

            self.latitude = latitude

            self.vatNo = vatNo

            self.address1 = address1

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.brandId = brandId

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            locationType = try container.decode(String.self, forKey: .locationType)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            city = try container.decode(String.self, forKey: .city)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandStoreTags: [String]?

        public var meta: StoreMeta

        public var locationType: String

        public var createdAt: String

        public var contactPerson: String

        public var phone: Int

        public var isEnabledForRecon: Bool?

        public var address2: String?

        public var parentStoreId: Int?

        public var longitude: Double

        public var loginUsername: String

        public var sId: String

        public var pincode: String

        public var mallArea: String?

        public var mallName: String?

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var alohomoraUserId: Int?

        public var companyId: Int

        public var name: String

        public var storeEmail: String

        public var updatedAt: String?

        public var orderIntegrationId: String?

        public var isActive: Bool?

        public var code: String?

        public var latitude: Double

        public var vatNo: String?

        public var address1: String

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var brandId: [String: Any]?

        public var state: String

        public var storeActiveFrom: String?

        public var fulfillmentChannel: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case brandStoreTags = "brand_store_tags"

            case meta

            case locationType = "location_type"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case address2

            case parentStoreId = "parent_store_id"

            case longitude

            case loginUsername = "login_username"

            case sId = "s_id"

            case pincode

            case mallArea = "mall_area"

            case mallName = "mall_name"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case alohomoraUserId = "alohomora_user_id"

            case companyId = "company_id"

            case name

            case storeEmail = "store_email"

            case updatedAt = "updated_at"

            case orderIntegrationId = "order_integration_id"

            case isActive = "is_active"

            case code

            case latitude

            case vatNo = "vat_no"

            case address1

            case city

            case storeAddressJson = "store_address_json"

            case brandId = "brand_id"

            case state

            case storeActiveFrom = "store_active_from"

            case fulfillmentChannel = "fulfillment_channel"

            case country
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandStoreTags = brandStoreTags

            self.meta = meta

            self.locationType = locationType

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.address2 = address2

            self.parentStoreId = parentStoreId

            self.longitude = longitude

            self.loginUsername = loginUsername

            self.sId = sId

            self.pincode = pincode

            self.mallArea = mallArea

            self.mallName = mallName

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.alohomoraUserId = alohomoraUserId

            self.companyId = companyId

            self.name = name

            self.storeEmail = storeEmail

            self.updatedAt = updatedAt

            self.orderIntegrationId = orderIntegrationId

            self.isActive = isActive

            self.code = code

            self.latitude = latitude

            self.vatNo = vatNo

            self.address1 = address1

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.brandId = brandId

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            locationType = try container.decode(String.self, forKey: .locationType)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            city = try container.decode(String.self, forKey: .city)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
