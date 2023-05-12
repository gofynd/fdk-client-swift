

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var state: String

        public var city: String

        public var latitude: Double

        public var longitude: Double

        public var name: String

        public var country: String

        public var phone: Int

        public var isActive: Bool?

        public var storeEmail: String

        public var contactPerson: String

        public var vatNo: String?

        public var loginUsername: String

        public var address2: String?

        public var isArchived: Bool?

        public var storeActiveFrom: String?

        public var mallName: String?

        public var meta: StoreMeta

        public var parentStoreId: Int?

        public var storeAddressJson: StoreAddress?

        public var companyId: Int

        public var packagingMaterialCount: Int?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var address1: String

        public var brandStoreTags: [String]?

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var sId: String

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var pincode: String

        public var updatedAt: String?

        public var locationType: String

        public var alohomoraUserId: Int?

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case state

            case city

            case latitude

            case longitude

            case name

            case country

            case phone

            case isActive = "is_active"

            case storeEmail = "store_email"

            case contactPerson = "contact_person"

            case vatNo = "vat_no"

            case loginUsername = "login_username"

            case address2

            case isArchived = "is_archived"

            case storeActiveFrom = "store_active_from"

            case mallName = "mall_name"

            case meta

            case parentStoreId = "parent_store_id"

            case storeAddressJson = "store_address_json"

            case companyId = "company_id"

            case packagingMaterialCount = "packaging_material_count"

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case address1

            case brandStoreTags = "brand_store_tags"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case sId = "s_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case pincode

            case updatedAt = "updated_at"

            case locationType = "location_type"

            case alohomoraUserId = "alohomora_user_id"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.city = city

            self.latitude = latitude

            self.longitude = longitude

            self.name = name

            self.country = country

            self.phone = phone

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.contactPerson = contactPerson

            self.vatNo = vatNo

            self.loginUsername = loginUsername

            self.address2 = address2

            self.isArchived = isArchived

            self.storeActiveFrom = storeActiveFrom

            self.mallName = mallName

            self.meta = meta

            self.parentStoreId = parentStoreId

            self.storeAddressJson = storeAddressJson

            self.companyId = companyId

            self.packagingMaterialCount = packagingMaterialCount

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.address1 = address1

            self.brandStoreTags = brandStoreTags

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.sId = sId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.pincode = pincode

            self.updatedAt = updatedAt

            self.locationType = locationType

            self.alohomoraUserId = alohomoraUserId

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallArea, forKey: .mallArea)
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

        public var city: String

        public var latitude: Double

        public var longitude: Double

        public var name: String

        public var country: String

        public var phone: Int

        public var isActive: Bool?

        public var storeEmail: String

        public var contactPerson: String

        public var vatNo: String?

        public var loginUsername: String

        public var address2: String?

        public var isArchived: Bool?

        public var storeActiveFrom: String?

        public var mallName: String?

        public var meta: StoreMeta

        public var parentStoreId: Int?

        public var storeAddressJson: StoreAddress?

        public var companyId: Int

        public var packagingMaterialCount: Int?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var address1: String

        public var brandStoreTags: [String]?

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var sId: String

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var pincode: String

        public var updatedAt: String?

        public var locationType: String

        public var alohomoraUserId: Int?

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case state

            case city

            case latitude

            case longitude

            case name

            case country

            case phone

            case isActive = "is_active"

            case storeEmail = "store_email"

            case contactPerson = "contact_person"

            case vatNo = "vat_no"

            case loginUsername = "login_username"

            case address2

            case isArchived = "is_archived"

            case storeActiveFrom = "store_active_from"

            case mallName = "mall_name"

            case meta

            case parentStoreId = "parent_store_id"

            case storeAddressJson = "store_address_json"

            case companyId = "company_id"

            case packagingMaterialCount = "packaging_material_count"

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case address1

            case brandStoreTags = "brand_store_tags"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case sId = "s_id"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case pincode

            case updatedAt = "updated_at"

            case locationType = "location_type"

            case alohomoraUserId = "alohomora_user_id"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.city = city

            self.latitude = latitude

            self.longitude = longitude

            self.name = name

            self.country = country

            self.phone = phone

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.contactPerson = contactPerson

            self.vatNo = vatNo

            self.loginUsername = loginUsername

            self.address2 = address2

            self.isArchived = isArchived

            self.storeActiveFrom = storeActiveFrom

            self.mallName = mallName

            self.meta = meta

            self.parentStoreId = parentStoreId

            self.storeAddressJson = storeAddressJson

            self.companyId = companyId

            self.packagingMaterialCount = packagingMaterialCount

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.address1 = address1

            self.brandStoreTags = brandStoreTags

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.sId = sId

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.pincode = pincode

            self.updatedAt = updatedAt

            self.locationType = locationType

            self.alohomoraUserId = alohomoraUserId

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallArea, forKey: .mallArea)
        }
    }
}
