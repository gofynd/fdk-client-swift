

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var code: String?

        public var storeEmail: String

        public var mallName: String?

        public var packagingMaterialCount: Int?

        public var state: String

        public var parentStoreId: Int?

        public var updatedAt: String?

        public var createdAt: String

        public var phone: Int

        public var isEnabledForRecon: Bool?

        public var isActive: Bool?

        public var locationType: String

        public var city: String

        public var country: String

        public var storeActiveFrom: String?

        public var longitude: Double

        public var vatNo: String?

        public var sId: String

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var mallArea: String?

        public var address1: String

        public var meta: StoreMeta

        public var loginUsername: String

        public var companyId: Int

        public var latitude: Double

        public var brandId: [String: Any]?

        public var name: String

        public var storeAddressJson: StoreAddress?

        public var address2: String?

        public var pincode: String

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case code

            case storeEmail = "store_email"

            case mallName = "mall_name"

            case packagingMaterialCount = "packaging_material_count"

            case state

            case parentStoreId = "parent_store_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case isActive = "is_active"

            case locationType = "location_type"

            case city

            case country

            case storeActiveFrom = "store_active_from"

            case longitude

            case vatNo = "vat_no"

            case sId = "s_id"

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case mallArea = "mall_area"

            case address1

            case meta

            case loginUsername = "login_username"

            case companyId = "company_id"

            case latitude

            case brandId = "brand_id"

            case name

            case storeAddressJson = "store_address_json"

            case address2

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.code = code

            self.storeEmail = storeEmail

            self.mallName = mallName

            self.packagingMaterialCount = packagingMaterialCount

            self.state = state

            self.parentStoreId = parentStoreId

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.isActive = isActive

            self.locationType = locationType

            self.city = city

            self.country = country

            self.storeActiveFrom = storeActiveFrom

            self.longitude = longitude

            self.vatNo = vatNo

            self.sId = sId

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.mallArea = mallArea

            self.address1 = address1

            self.meta = meta

            self.loginUsername = loginUsername

            self.companyId = companyId

            self.latitude = latitude

            self.brandId = brandId

            self.name = name

            self.storeAddressJson = storeAddressJson

            self.address2 = address2

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            sId = try container.decode(String.self, forKey: .sId)

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

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

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
        public var code: String?

        public var storeEmail: String

        public var mallName: String?

        public var packagingMaterialCount: Int?

        public var state: String

        public var parentStoreId: Int?

        public var updatedAt: String?

        public var createdAt: String

        public var phone: Int

        public var isEnabledForRecon: Bool?

        public var isActive: Bool?

        public var locationType: String

        public var city: String

        public var country: String

        public var storeActiveFrom: String?

        public var longitude: Double

        public var vatNo: String?

        public var sId: String

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var mallArea: String?

        public var address1: String

        public var meta: StoreMeta

        public var loginUsername: String

        public var companyId: Int

        public var latitude: Double

        public var brandId: [String: Any]?

        public var name: String

        public var storeAddressJson: StoreAddress?

        public var address2: String?

        public var pincode: String

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case code

            case storeEmail = "store_email"

            case mallName = "mall_name"

            case packagingMaterialCount = "packaging_material_count"

            case state

            case parentStoreId = "parent_store_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case isActive = "is_active"

            case locationType = "location_type"

            case city

            case country

            case storeActiveFrom = "store_active_from"

            case longitude

            case vatNo = "vat_no"

            case sId = "s_id"

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case mallArea = "mall_area"

            case address1

            case meta

            case loginUsername = "login_username"

            case companyId = "company_id"

            case latitude

            case brandId = "brand_id"

            case name

            case storeAddressJson = "store_address_json"

            case address2

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.code = code

            self.storeEmail = storeEmail

            self.mallName = mallName

            self.packagingMaterialCount = packagingMaterialCount

            self.state = state

            self.parentStoreId = parentStoreId

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.isActive = isActive

            self.locationType = locationType

            self.city = city

            self.country = country

            self.storeActiveFrom = storeActiveFrom

            self.longitude = longitude

            self.vatNo = vatNo

            self.sId = sId

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.mallArea = mallArea

            self.address1 = address1

            self.meta = meta

            self.loginUsername = loginUsername

            self.companyId = companyId

            self.latitude = latitude

            self.brandId = brandId

            self.name = name

            self.storeAddressJson = storeAddressJson

            self.address2 = address2

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            sId = try container.decode(String.self, forKey: .sId)

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

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
