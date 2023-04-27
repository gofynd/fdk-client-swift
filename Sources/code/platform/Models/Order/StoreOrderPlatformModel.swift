

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var longitude: Double

        public var fulfillmentChannel: String

        public var pincode: String

        public var state: String

        public var mallName: String?

        public var packagingMaterialCount: Int?

        public var country: String

        public var city: String

        public var storeActiveFrom: String?

        public var isActive: Bool?

        public var sId: String

        public var address1: String

        public var loginUsername: String

        public var name: String

        public var storeEmail: String

        public var companyId: Int

        public var vatNo: String?

        public var latitude: Double

        public var meta: StoreMeta

        public var brandStoreTags: [String]?

        public var updatedAt: String?

        public var isArchived: Bool?

        public var storeAddressJson: StoreAddress?

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var alohomoraUserId: Int?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var createdAt: String

        public var contactPerson: String

        public var address2: String?

        public var parentStoreId: Int?

        public var code: String?

        public var phone: Int

        public var locationType: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case fulfillmentChannel = "fulfillment_channel"

            case pincode

            case state

            case mallName = "mall_name"

            case packagingMaterialCount = "packaging_material_count"

            case country

            case city

            case storeActiveFrom = "store_active_from"

            case isActive = "is_active"

            case sId = "s_id"

            case address1

            case loginUsername = "login_username"

            case name

            case storeEmail = "store_email"

            case companyId = "company_id"

            case vatNo = "vat_no"

            case latitude

            case meta

            case brandStoreTags = "brand_store_tags"

            case updatedAt = "updated_at"

            case isArchived = "is_archived"

            case storeAddressJson = "store_address_json"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case alohomoraUserId = "alohomora_user_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case address2

            case parentStoreId = "parent_store_id"

            case code

            case phone

            case locationType = "location_type"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.longitude = longitude

            self.fulfillmentChannel = fulfillmentChannel

            self.pincode = pincode

            self.state = state

            self.mallName = mallName

            self.packagingMaterialCount = packagingMaterialCount

            self.country = country

            self.city = city

            self.storeActiveFrom = storeActiveFrom

            self.isActive = isActive

            self.sId = sId

            self.address1 = address1

            self.loginUsername = loginUsername

            self.name = name

            self.storeEmail = storeEmail

            self.companyId = companyId

            self.vatNo = vatNo

            self.latitude = latitude

            self.meta = meta

            self.brandStoreTags = brandStoreTags

            self.updatedAt = updatedAt

            self.isArchived = isArchived

            self.storeAddressJson = storeAddressJson

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.alohomoraUserId = alohomoraUserId

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.address2 = address2

            self.parentStoreId = parentStoreId

            self.code = code

            self.phone = phone

            self.locationType = locationType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

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

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            sId = try container.decode(String.self, forKey: .sId)

            address1 = try container.decode(String.self, forKey: .address1)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            locationType = try container.decode(String.self, forKey: .locationType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(locationType, forKey: .locationType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var longitude: Double

        public var fulfillmentChannel: String

        public var pincode: String

        public var state: String

        public var mallName: String?

        public var packagingMaterialCount: Int?

        public var country: String

        public var city: String

        public var storeActiveFrom: String?

        public var isActive: Bool?

        public var sId: String

        public var address1: String

        public var loginUsername: String

        public var name: String

        public var storeEmail: String

        public var companyId: Int

        public var vatNo: String?

        public var latitude: Double

        public var meta: StoreMeta

        public var brandStoreTags: [String]?

        public var updatedAt: String?

        public var isArchived: Bool?

        public var storeAddressJson: StoreAddress?

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var alohomoraUserId: Int?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var createdAt: String

        public var contactPerson: String

        public var address2: String?

        public var parentStoreId: Int?

        public var code: String?

        public var phone: Int

        public var locationType: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case fulfillmentChannel = "fulfillment_channel"

            case pincode

            case state

            case mallName = "mall_name"

            case packagingMaterialCount = "packaging_material_count"

            case country

            case city

            case storeActiveFrom = "store_active_from"

            case isActive = "is_active"

            case sId = "s_id"

            case address1

            case loginUsername = "login_username"

            case name

            case storeEmail = "store_email"

            case companyId = "company_id"

            case vatNo = "vat_no"

            case latitude

            case meta

            case brandStoreTags = "brand_store_tags"

            case updatedAt = "updated_at"

            case isArchived = "is_archived"

            case storeAddressJson = "store_address_json"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case alohomoraUserId = "alohomora_user_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case address2

            case parentStoreId = "parent_store_id"

            case code

            case phone

            case locationType = "location_type"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.longitude = longitude

            self.fulfillmentChannel = fulfillmentChannel

            self.pincode = pincode

            self.state = state

            self.mallName = mallName

            self.packagingMaterialCount = packagingMaterialCount

            self.country = country

            self.city = city

            self.storeActiveFrom = storeActiveFrom

            self.isActive = isActive

            self.sId = sId

            self.address1 = address1

            self.loginUsername = loginUsername

            self.name = name

            self.storeEmail = storeEmail

            self.companyId = companyId

            self.vatNo = vatNo

            self.latitude = latitude

            self.meta = meta

            self.brandStoreTags = brandStoreTags

            self.updatedAt = updatedAt

            self.isArchived = isArchived

            self.storeAddressJson = storeAddressJson

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.alohomoraUserId = alohomoraUserId

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.address2 = address2

            self.parentStoreId = parentStoreId

            self.code = code

            self.phone = phone

            self.locationType = locationType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

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

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            sId = try container.decode(String.self, forKey: .sId)

            address1 = try container.decode(String.self, forKey: .address1)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            locationType = try container.decode(String.self, forKey: .locationType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(locationType, forKey: .locationType)
        }
    }
}
