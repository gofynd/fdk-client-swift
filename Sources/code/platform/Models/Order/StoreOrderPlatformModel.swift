

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var state: String

        public var packagingMaterialCount: Int?

        public var isActive: Bool?

        public var locationType: String

        public var companyId: Int

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var createdAt: String

        public var latitude: Double

        public var alohomoraUserId: Int?

        public var brandId: [String: Any]?

        public var name: String

        public var longitude: Double

        public var storeActiveFrom: String?

        public var parentStoreId: Int?

        public var address1: String

        public var country: String

        public var mallName: String?

        public var contactPerson: String

        public var pincode: String

        public var isArchived: Bool?

        public var mallArea: String?

        public var city: String

        public var brandStoreTags: [String]?

        public var vatNo: String?

        public var address2: String?

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var updatedAt: String?

        public var storeEmail: String

        public var sId: String

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public enum CodingKeys: String, CodingKey {
            case state

            case packagingMaterialCount = "packaging_material_count"

            case isActive = "is_active"

            case locationType = "location_type"

            case companyId = "company_id"

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case createdAt = "created_at"

            case latitude

            case alohomoraUserId = "alohomora_user_id"

            case brandId = "brand_id"

            case name

            case longitude

            case storeActiveFrom = "store_active_from"

            case parentStoreId = "parent_store_id"

            case address1

            case country

            case mallName = "mall_name"

            case contactPerson = "contact_person"

            case pincode

            case isArchived = "is_archived"

            case mallArea = "mall_area"

            case city

            case brandStoreTags = "brand_store_tags"

            case vatNo = "vat_no"

            case address2

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case updatedAt = "updated_at"

            case storeEmail = "store_email"

            case sId = "s_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case phone

            case storeAddressJson = "store_address_json"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.packagingMaterialCount = packagingMaterialCount

            self.isActive = isActive

            self.locationType = locationType

            self.companyId = companyId

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.createdAt = createdAt

            self.latitude = latitude

            self.alohomoraUserId = alohomoraUserId

            self.brandId = brandId

            self.name = name

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.country = country

            self.mallName = mallName

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.isArchived = isArchived

            self.mallArea = mallArea

            self.city = city

            self.brandStoreTags = brandStoreTags

            self.vatNo = vatNo

            self.address2 = address2

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.updatedAt = updatedAt

            self.storeEmail = storeEmail

            self.sId = sId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.phone = phone

            self.storeAddressJson = storeAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            name = try container.decode(String.self, forKey: .name)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var state: String

        public var packagingMaterialCount: Int?

        public var isActive: Bool?

        public var locationType: String

        public var companyId: Int

        public var loginUsername: String

        public var orderIntegrationId: String?

        public var createdAt: String

        public var latitude: Double

        public var alohomoraUserId: Int?

        public var brandId: [String: Any]?

        public var name: String

        public var longitude: Double

        public var storeActiveFrom: String?

        public var parentStoreId: Int?

        public var address1: String

        public var country: String

        public var mallName: String?

        public var contactPerson: String

        public var pincode: String

        public var isArchived: Bool?

        public var mallArea: String?

        public var city: String

        public var brandStoreTags: [String]?

        public var vatNo: String?

        public var address2: String?

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var updatedAt: String?

        public var storeEmail: String

        public var sId: String

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public enum CodingKeys: String, CodingKey {
            case state

            case packagingMaterialCount = "packaging_material_count"

            case isActive = "is_active"

            case locationType = "location_type"

            case companyId = "company_id"

            case loginUsername = "login_username"

            case orderIntegrationId = "order_integration_id"

            case createdAt = "created_at"

            case latitude

            case alohomoraUserId = "alohomora_user_id"

            case brandId = "brand_id"

            case name

            case longitude

            case storeActiveFrom = "store_active_from"

            case parentStoreId = "parent_store_id"

            case address1

            case country

            case mallName = "mall_name"

            case contactPerson = "contact_person"

            case pincode

            case isArchived = "is_archived"

            case mallArea = "mall_area"

            case city

            case brandStoreTags = "brand_store_tags"

            case vatNo = "vat_no"

            case address2

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case updatedAt = "updated_at"

            case storeEmail = "store_email"

            case sId = "s_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case phone

            case storeAddressJson = "store_address_json"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.packagingMaterialCount = packagingMaterialCount

            self.isActive = isActive

            self.locationType = locationType

            self.companyId = companyId

            self.loginUsername = loginUsername

            self.orderIntegrationId = orderIntegrationId

            self.createdAt = createdAt

            self.latitude = latitude

            self.alohomoraUserId = alohomoraUserId

            self.brandId = brandId

            self.name = name

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.country = country

            self.mallName = mallName

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.isArchived = isArchived

            self.mallArea = mallArea

            self.city = city

            self.brandStoreTags = brandStoreTags

            self.vatNo = vatNo

            self.address2 = address2

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.updatedAt = updatedAt

            self.storeEmail = storeEmail

            self.sId = sId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.phone = phone

            self.storeAddressJson = storeAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            name = try container.decode(String.self, forKey: .name)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
        }
    }
}
