

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var sId: String

        public var createdAt: String

        public var address2: String?

        public var vatNo: String?

        public var loginUsername: String

        public var isActive: Bool?

        public var parentStoreId: Int?

        public var companyId: Int

        public var brandId: [String: Any]?

        public var contactPerson: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var pincode: String

        public var locationType: String

        public var orderIntegrationId: String?

        public var updatedAt: String?

        public var latitude: Double

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var isEnabledForRecon: Bool?

        public var isArchived: Bool?

        public var storeActiveFrom: String?

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var name: String

        public var phone: Int

        public var mallArea: String?

        public var address1: String

        public var state: String

        public var meta: StoreMeta

        public var longitude: Double

        public var mallName: String?

        public var storeEmail: String

        public var city: String

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case sId = "s_id"

            case createdAt = "created_at"

            case address2

            case vatNo = "vat_no"

            case loginUsername = "login_username"

            case isActive = "is_active"

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case brandId = "brand_id"

            case contactPerson = "contact_person"

            case storeAddressJson = "store_address_json"

            case country

            case pincode

            case locationType = "location_type"

            case orderIntegrationId = "order_integration_id"

            case updatedAt = "updated_at"

            case latitude

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case isEnabledForRecon = "is_enabled_for_recon"

            case isArchived = "is_archived"

            case storeActiveFrom = "store_active_from"

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case name

            case phone

            case mallArea = "mall_area"

            case address1

            case state

            case meta

            case longitude

            case mallName = "mall_name"

            case storeEmail = "store_email"

            case city

            case code
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.sId = sId

            self.createdAt = createdAt

            self.address2 = address2

            self.vatNo = vatNo

            self.loginUsername = loginUsername

            self.isActive = isActive

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.brandId = brandId

            self.contactPerson = contactPerson

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.pincode = pincode

            self.locationType = locationType

            self.orderIntegrationId = orderIntegrationId

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.isEnabledForRecon = isEnabledForRecon

            self.isArchived = isArchived

            self.storeActiveFrom = storeActiveFrom

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.name = name

            self.phone = phone

            self.mallArea = mallArea

            self.address1 = address1

            self.state = state

            self.meta = meta

            self.longitude = longitude

            self.mallName = mallName

            self.storeEmail = storeEmail

            self.city = city

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sId = try container.decode(String.self, forKey: .sId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var sId: String

        public var createdAt: String

        public var address2: String?

        public var vatNo: String?

        public var loginUsername: String

        public var isActive: Bool?

        public var parentStoreId: Int?

        public var companyId: Int

        public var brandId: [String: Any]?

        public var contactPerson: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var pincode: String

        public var locationType: String

        public var orderIntegrationId: String?

        public var updatedAt: String?

        public var latitude: Double

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var isEnabledForRecon: Bool?

        public var isArchived: Bool?

        public var storeActiveFrom: String?

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var name: String

        public var phone: Int

        public var mallArea: String?

        public var address1: String

        public var state: String

        public var meta: StoreMeta

        public var longitude: Double

        public var mallName: String?

        public var storeEmail: String

        public var city: String

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case sId = "s_id"

            case createdAt = "created_at"

            case address2

            case vatNo = "vat_no"

            case loginUsername = "login_username"

            case isActive = "is_active"

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case brandId = "brand_id"

            case contactPerson = "contact_person"

            case storeAddressJson = "store_address_json"

            case country

            case pincode

            case locationType = "location_type"

            case orderIntegrationId = "order_integration_id"

            case updatedAt = "updated_at"

            case latitude

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case isEnabledForRecon = "is_enabled_for_recon"

            case isArchived = "is_archived"

            case storeActiveFrom = "store_active_from"

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case name

            case phone

            case mallArea = "mall_area"

            case address1

            case state

            case meta

            case longitude

            case mallName = "mall_name"

            case storeEmail = "store_email"

            case city

            case code
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.sId = sId

            self.createdAt = createdAt

            self.address2 = address2

            self.vatNo = vatNo

            self.loginUsername = loginUsername

            self.isActive = isActive

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.brandId = brandId

            self.contactPerson = contactPerson

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.pincode = pincode

            self.locationType = locationType

            self.orderIntegrationId = orderIntegrationId

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.isEnabledForRecon = isEnabledForRecon

            self.isArchived = isArchived

            self.storeActiveFrom = storeActiveFrom

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.name = name

            self.phone = phone

            self.mallArea = mallArea

            self.address1 = address1

            self.state = state

            self.meta = meta

            self.longitude = longitude

            self.mallName = mallName

            self.storeEmail = storeEmail

            self.city = city

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sId = try container.decode(String.self, forKey: .sId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
