

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var latitude: Double

        public var isArchived: Bool?

        public var orderIntegrationId: String?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var isActive: Bool?

        public var code: String?

        public var meta: StoreMeta

        public var mallName: String?

        public var name: String

        public var parentStoreId: Int?

        public var address1: String

        public var loginUsername: String

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var longitude: Double

        public var pincode: String

        public var createdAt: String

        public var city: String

        public var companyId: Int

        public var sId: String

        public var locationType: String

        public var phone: Int

        public var brandStoreTags: [String]?

        public var storeEmail: String

        public var state: String

        public var storeActiveFrom: String?

        public var packagingMaterialCount: Int?

        public var alohomoraUserId: Int?

        public var address2: String?

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case latitude

            case isArchived = "is_archived"

            case orderIntegrationId = "order_integration_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case isActive = "is_active"

            case code

            case meta

            case mallName = "mall_name"

            case name

            case parentStoreId = "parent_store_id"

            case address1

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case longitude

            case pincode

            case createdAt = "created_at"

            case city

            case companyId = "company_id"

            case sId = "s_id"

            case locationType = "location_type"

            case phone

            case brandStoreTags = "brand_store_tags"

            case storeEmail = "store_email"

            case state

            case storeActiveFrom = "store_active_from"

            case packagingMaterialCount = "packaging_material_count"

            case alohomoraUserId = "alohomora_user_id"

            case address2

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case storeAddressJson = "store_address_json"

            case country
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.latitude = latitude

            self.isArchived = isArchived

            self.orderIntegrationId = orderIntegrationId

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.isActive = isActive

            self.code = code

            self.meta = meta

            self.mallName = mallName

            self.name = name

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.pincode = pincode

            self.createdAt = createdAt

            self.city = city

            self.companyId = companyId

            self.sId = sId

            self.locationType = locationType

            self.phone = phone

            self.brandStoreTags = brandStoreTags

            self.storeEmail = storeEmail

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.packagingMaterialCount = packagingMaterialCount

            self.alohomoraUserId = alohomoraUserId

            self.address2 = address2

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.storeAddressJson = storeAddressJson

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(String.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

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
        public var latitude: Double

        public var isArchived: Bool?

        public var orderIntegrationId: String?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var isActive: Bool?

        public var code: String?

        public var meta: StoreMeta

        public var mallName: String?

        public var name: String

        public var parentStoreId: Int?

        public var address1: String

        public var loginUsername: String

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var longitude: Double

        public var pincode: String

        public var createdAt: String

        public var city: String

        public var companyId: Int

        public var sId: String

        public var locationType: String

        public var phone: Int

        public var brandStoreTags: [String]?

        public var storeEmail: String

        public var state: String

        public var storeActiveFrom: String?

        public var packagingMaterialCount: Int?

        public var alohomoraUserId: Int?

        public var address2: String?

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case latitude

            case isArchived = "is_archived"

            case orderIntegrationId = "order_integration_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case isActive = "is_active"

            case code

            case meta

            case mallName = "mall_name"

            case name

            case parentStoreId = "parent_store_id"

            case address1

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case longitude

            case pincode

            case createdAt = "created_at"

            case city

            case companyId = "company_id"

            case sId = "s_id"

            case locationType = "location_type"

            case phone

            case brandStoreTags = "brand_store_tags"

            case storeEmail = "store_email"

            case state

            case storeActiveFrom = "store_active_from"

            case packagingMaterialCount = "packaging_material_count"

            case alohomoraUserId = "alohomora_user_id"

            case address2

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case storeAddressJson = "store_address_json"

            case country
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.latitude = latitude

            self.isArchived = isArchived

            self.orderIntegrationId = orderIntegrationId

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.isActive = isActive

            self.code = code

            self.meta = meta

            self.mallName = mallName

            self.name = name

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.pincode = pincode

            self.createdAt = createdAt

            self.city = city

            self.companyId = companyId

            self.sId = sId

            self.locationType = locationType

            self.phone = phone

            self.brandStoreTags = brandStoreTags

            self.storeEmail = storeEmail

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.packagingMaterialCount = packagingMaterialCount

            self.alohomoraUserId = alohomoraUserId

            self.address2 = address2

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.storeAddressJson = storeAddressJson

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(String.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
