

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var parentStoreId: Int?

        public var fulfillmentChannel: String

        public var sId: String

        public var state: String

        public var isEnabledForRecon: Bool?

        public var phone: Int

        public var latitude: Double

        public var updatedAt: String?

        public var mallName: String?

        public var createdAt: String

        public var name: String

        public var city: String

        public var contactPerson: String

        public var country: String

        public var address2: String?

        public var companyId: Int

        public var orderIntegrationId: String?

        public var brandStoreTags: [String]?

        public var longitude: Double

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var code: String?

        public var address1: String

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var isActive: Bool?

        public var locationType: String

        public var storeEmail: String

        public var isArchived: Bool?

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var loginUsername: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case meta

            case parentStoreId = "parent_store_id"

            case fulfillmentChannel = "fulfillment_channel"

            case sId = "s_id"

            case state

            case isEnabledForRecon = "is_enabled_for_recon"

            case phone

            case latitude

            case updatedAt = "updated_at"

            case mallName = "mall_name"

            case createdAt = "created_at"

            case name

            case city

            case contactPerson = "contact_person"

            case country

            case address2

            case companyId = "company_id"

            case orderIntegrationId = "order_integration_id"

            case brandStoreTags = "brand_store_tags"

            case longitude

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case code

            case address1

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case isActive = "is_active"

            case locationType = "location_type"

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case pincode

            case storeAddressJson = "store_address_json"

            case loginUsername = "login_username"

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandId = brandId

            self.meta = meta

            self.parentStoreId = parentStoreId

            self.fulfillmentChannel = fulfillmentChannel

            self.sId = sId

            self.state = state

            self.isEnabledForRecon = isEnabledForRecon

            self.phone = phone

            self.latitude = latitude

            self.updatedAt = updatedAt

            self.mallName = mallName

            self.createdAt = createdAt

            self.name = name

            self.city = city

            self.contactPerson = contactPerson

            self.country = country

            self.address2 = address2

            self.companyId = companyId

            self.orderIntegrationId = orderIntegrationId

            self.brandStoreTags = brandStoreTags

            self.longitude = longitude

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.code = code

            self.address1 = address1

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.isActive = isActive

            self.locationType = locationType

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.loginUsername = loginUsername

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
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

        public var meta: StoreMeta

        public var parentStoreId: Int?

        public var fulfillmentChannel: String

        public var sId: String

        public var state: String

        public var isEnabledForRecon: Bool?

        public var phone: Int

        public var latitude: Double

        public var updatedAt: String?

        public var mallName: String?

        public var createdAt: String

        public var name: String

        public var city: String

        public var contactPerson: String

        public var country: String

        public var address2: String?

        public var companyId: Int

        public var orderIntegrationId: String?

        public var brandStoreTags: [String]?

        public var longitude: Double

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var code: String?

        public var address1: String

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var isActive: Bool?

        public var locationType: String

        public var storeEmail: String

        public var isArchived: Bool?

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var loginUsername: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case meta

            case parentStoreId = "parent_store_id"

            case fulfillmentChannel = "fulfillment_channel"

            case sId = "s_id"

            case state

            case isEnabledForRecon = "is_enabled_for_recon"

            case phone

            case latitude

            case updatedAt = "updated_at"

            case mallName = "mall_name"

            case createdAt = "created_at"

            case name

            case city

            case contactPerson = "contact_person"

            case country

            case address2

            case companyId = "company_id"

            case orderIntegrationId = "order_integration_id"

            case brandStoreTags = "brand_store_tags"

            case longitude

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case code

            case address1

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case isActive = "is_active"

            case locationType = "location_type"

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case pincode

            case storeAddressJson = "store_address_json"

            case loginUsername = "login_username"

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandId = brandId

            self.meta = meta

            self.parentStoreId = parentStoreId

            self.fulfillmentChannel = fulfillmentChannel

            self.sId = sId

            self.state = state

            self.isEnabledForRecon = isEnabledForRecon

            self.phone = phone

            self.latitude = latitude

            self.updatedAt = updatedAt

            self.mallName = mallName

            self.createdAt = createdAt

            self.name = name

            self.city = city

            self.contactPerson = contactPerson

            self.country = country

            self.address2 = address2

            self.companyId = companyId

            self.orderIntegrationId = orderIntegrationId

            self.brandStoreTags = brandStoreTags

            self.longitude = longitude

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.code = code

            self.address1 = address1

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.isActive = isActive

            self.locationType = locationType

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.loginUsername = loginUsername

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
        }
    }
}
