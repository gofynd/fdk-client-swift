

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var phone: Int

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var isActive: Bool?

        public var brandStoreTags: [String]?

        public var companyId: Int

        public var latitude: Double

        public var mallName: String?

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var pincode: String

        public var country: String

        public var address2: String?

        public var locationType: String

        public var orderIntegrationId: String?

        public var vatNo: String?

        public var fulfillmentChannel: String

        public var storeEmail: String

        public var state: String

        public var createdAt: String

        public var storeActiveFrom: String?

        public var loginUsername: String

        public var name: String

        public var sId: String

        public var storeAddressJson: StoreAddress?

        public var packagingMaterialCount: Int?

        public var code: String?

        public var isArchived: Bool?

        public var brandId: [String: Any]?

        public var longitude: Double

        public var parentStoreId: Int?

        public var city: String

        public var updatedAt: String?

        public var address1: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case isActive = "is_active"

            case brandStoreTags = "brand_store_tags"

            case companyId = "company_id"

            case latitude

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case pincode

            case country

            case address2

            case locationType = "location_type"

            case orderIntegrationId = "order_integration_id"

            case vatNo = "vat_no"

            case fulfillmentChannel = "fulfillment_channel"

            case storeEmail = "store_email"

            case state

            case createdAt = "created_at"

            case storeActiveFrom = "store_active_from"

            case loginUsername = "login_username"

            case name

            case sId = "s_id"

            case storeAddressJson = "store_address_json"

            case packagingMaterialCount = "packaging_material_count"

            case code

            case isArchived = "is_archived"

            case brandId = "brand_id"

            case longitude

            case parentStoreId = "parent_store_id"

            case city

            case updatedAt = "updated_at"

            case address1

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.isActive = isActive

            self.brandStoreTags = brandStoreTags

            self.companyId = companyId

            self.latitude = latitude

            self.mallName = mallName

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.pincode = pincode

            self.country = country

            self.address2 = address2

            self.locationType = locationType

            self.orderIntegrationId = orderIntegrationId

            self.vatNo = vatNo

            self.fulfillmentChannel = fulfillmentChannel

            self.storeEmail = storeEmail

            self.state = state

            self.createdAt = createdAt

            self.storeActiveFrom = storeActiveFrom

            self.loginUsername = loginUsername

            self.name = name

            self.sId = sId

            self.storeAddressJson = storeAddressJson

            self.packagingMaterialCount = packagingMaterialCount

            self.code = code

            self.isArchived = isArchived

            self.brandId = brandId

            self.longitude = longitude

            self.parentStoreId = parentStoreId

            self.city = city

            self.updatedAt = updatedAt

            self.address1 = address1

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            name = try container.decode(String.self, forKey: .name)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var phone: Int

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var isActive: Bool?

        public var brandStoreTags: [String]?

        public var companyId: Int

        public var latitude: Double

        public var mallName: String?

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var pincode: String

        public var country: String

        public var address2: String?

        public var locationType: String

        public var orderIntegrationId: String?

        public var vatNo: String?

        public var fulfillmentChannel: String

        public var storeEmail: String

        public var state: String

        public var createdAt: String

        public var storeActiveFrom: String?

        public var loginUsername: String

        public var name: String

        public var sId: String

        public var storeAddressJson: StoreAddress?

        public var packagingMaterialCount: Int?

        public var code: String?

        public var isArchived: Bool?

        public var brandId: [String: Any]?

        public var longitude: Double

        public var parentStoreId: Int?

        public var city: String

        public var updatedAt: String?

        public var address1: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case isActive = "is_active"

            case brandStoreTags = "brand_store_tags"

            case companyId = "company_id"

            case latitude

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case pincode

            case country

            case address2

            case locationType = "location_type"

            case orderIntegrationId = "order_integration_id"

            case vatNo = "vat_no"

            case fulfillmentChannel = "fulfillment_channel"

            case storeEmail = "store_email"

            case state

            case createdAt = "created_at"

            case storeActiveFrom = "store_active_from"

            case loginUsername = "login_username"

            case name

            case sId = "s_id"

            case storeAddressJson = "store_address_json"

            case packagingMaterialCount = "packaging_material_count"

            case code

            case isArchived = "is_archived"

            case brandId = "brand_id"

            case longitude

            case parentStoreId = "parent_store_id"

            case city

            case updatedAt = "updated_at"

            case address1

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.isActive = isActive

            self.brandStoreTags = brandStoreTags

            self.companyId = companyId

            self.latitude = latitude

            self.mallName = mallName

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.pincode = pincode

            self.country = country

            self.address2 = address2

            self.locationType = locationType

            self.orderIntegrationId = orderIntegrationId

            self.vatNo = vatNo

            self.fulfillmentChannel = fulfillmentChannel

            self.storeEmail = storeEmail

            self.state = state

            self.createdAt = createdAt

            self.storeActiveFrom = storeActiveFrom

            self.loginUsername = loginUsername

            self.name = name

            self.sId = sId

            self.storeAddressJson = storeAddressJson

            self.packagingMaterialCount = packagingMaterialCount

            self.code = code

            self.isArchived = isArchived

            self.brandId = brandId

            self.longitude = longitude

            self.parentStoreId = parentStoreId

            self.city = city

            self.updatedAt = updatedAt

            self.address1 = address1

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            name = try container.decode(String.self, forKey: .name)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
