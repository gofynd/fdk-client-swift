

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallName: String?

        public var storeActiveFrom: String?

        public var phone: Int

        public var address1: String

        public var vatNo: String?

        public var updatedAt: String?

        public var mallArea: String?

        public var country: String

        public var locationType: String

        public var code: String?

        public var orderIntegrationId: String?

        public var storeEmail: String

        public var state: String

        public var name: String

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var alohomoraUserId: Int?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var brandStoreTags: [String]?

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var loginUsername: String

        public var pincode: String

        public var createdAt: String

        public var parentStoreId: Int?

        public var address2: String?

        public var city: String

        public var longitude: Double

        public var isArchived: Bool?

        public var latitude: Double

        public var sId: String

        public var fulfillmentChannel: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case mallName = "mall_name"

            case storeActiveFrom = "store_active_from"

            case phone

            case address1

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case mallArea = "mall_area"

            case country

            case locationType = "location_type"

            case code

            case orderIntegrationId = "order_integration_id"

            case storeEmail = "store_email"

            case state

            case name

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case alohomoraUserId = "alohomora_user_id"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case brandStoreTags = "brand_store_tags"

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case loginUsername = "login_username"

            case pincode

            case createdAt = "created_at"

            case parentStoreId = "parent_store_id"

            case address2

            case city

            case longitude

            case isArchived = "is_archived"

            case latitude

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallName = mallName

            self.storeActiveFrom = storeActiveFrom

            self.phone = phone

            self.address1 = address1

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.mallArea = mallArea

            self.country = country

            self.locationType = locationType

            self.code = code

            self.orderIntegrationId = orderIntegrationId

            self.storeEmail = storeEmail

            self.state = state

            self.name = name

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.alohomoraUserId = alohomoraUserId

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.brandStoreTags = brandStoreTags

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.pincode = pincode

            self.createdAt = createdAt

            self.parentStoreId = parentStoreId

            self.address2 = address2

            self.city = city

            self.longitude = longitude

            self.isArchived = isArchived

            self.latitude = latitude

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            phone = try container.decode(Int.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            name = try container.decode(String.self, forKey: .name)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            pincode = try container.decode(String.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallName: String?

        public var storeActiveFrom: String?

        public var phone: Int

        public var address1: String

        public var vatNo: String?

        public var updatedAt: String?

        public var mallArea: String?

        public var country: String

        public var locationType: String

        public var code: String?

        public var orderIntegrationId: String?

        public var storeEmail: String

        public var state: String

        public var name: String

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var alohomoraUserId: Int?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var brandStoreTags: [String]?

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var loginUsername: String

        public var pincode: String

        public var createdAt: String

        public var parentStoreId: Int?

        public var address2: String?

        public var city: String

        public var longitude: Double

        public var isArchived: Bool?

        public var latitude: Double

        public var sId: String

        public var fulfillmentChannel: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case mallName = "mall_name"

            case storeActiveFrom = "store_active_from"

            case phone

            case address1

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case mallArea = "mall_area"

            case country

            case locationType = "location_type"

            case code

            case orderIntegrationId = "order_integration_id"

            case storeEmail = "store_email"

            case state

            case name

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case alohomoraUserId = "alohomora_user_id"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case brandStoreTags = "brand_store_tags"

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case loginUsername = "login_username"

            case pincode

            case createdAt = "created_at"

            case parentStoreId = "parent_store_id"

            case address2

            case city

            case longitude

            case isArchived = "is_archived"

            case latitude

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallName = mallName

            self.storeActiveFrom = storeActiveFrom

            self.phone = phone

            self.address1 = address1

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.mallArea = mallArea

            self.country = country

            self.locationType = locationType

            self.code = code

            self.orderIntegrationId = orderIntegrationId

            self.storeEmail = storeEmail

            self.state = state

            self.name = name

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.alohomoraUserId = alohomoraUserId

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.brandStoreTags = brandStoreTags

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.pincode = pincode

            self.createdAt = createdAt

            self.parentStoreId = parentStoreId

            self.address2 = address2

            self.city = city

            self.longitude = longitude

            self.isArchived = isArchived

            self.latitude = latitude

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            phone = try container.decode(Int.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            name = try container.decode(String.self, forKey: .name)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            pincode = try container.decode(String.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
