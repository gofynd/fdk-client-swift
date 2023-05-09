

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var state: String

        public var country: String

        public var name: String

        public var brandId: [String: Any]?

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var isArchived: Bool?

        public var createdAt: String

        public var contactPerson: String

        public var updatedAt: String?

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var address2: String?

        public var isEnabledForRecon: Bool?

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var phone: Int

        public var sId: String

        public var address1: String

        public var orderIntegrationId: String?

        public var fulfillmentChannel: String

        public var companyId: Int

        public var mallName: String?

        public var locationType: String

        public var longitude: Double

        public var storeEmail: String

        public var loginUsername: String

        public var latitude: Double

        public var city: String

        public var isActive: Bool?

        public var code: String?

        public var parentStoreId: Int?

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case state

            case country

            case name

            case brandId = "brand_id"

            case pincode

            case storeAddressJson = "store_address_json"

            case isArchived = "is_archived"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case address2

            case isEnabledForRecon = "is_enabled_for_recon"

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case phone

            case sId = "s_id"

            case address1

            case orderIntegrationId = "order_integration_id"

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case mallName = "mall_name"

            case locationType = "location_type"

            case longitude

            case storeEmail = "store_email"

            case loginUsername = "login_username"

            case latitude

            case city

            case isActive = "is_active"

            case code

            case parentStoreId = "parent_store_id"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.country = country

            self.name = name

            self.brandId = brandId

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.isArchived = isArchived

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.address2 = address2

            self.isEnabledForRecon = isEnabledForRecon

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.phone = phone

            self.sId = sId

            self.address1 = address1

            self.orderIntegrationId = orderIntegrationId

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.mallName = mallName

            self.locationType = locationType

            self.longitude = longitude

            self.storeEmail = storeEmail

            self.loginUsername = loginUsername

            self.latitude = latitude

            self.city = city

            self.isActive = isActive

            self.code = code

            self.parentStoreId = parentStoreId

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            phone = try container.decode(Int.self, forKey: .phone)

            sId = try container.decode(String.self, forKey: .sId)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            latitude = try container.decode(Double.self, forKey: .latitude)

            city = try container.decode(String.self, forKey: .city)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

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

        public var country: String

        public var name: String

        public var brandId: [String: Any]?

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var isArchived: Bool?

        public var createdAt: String

        public var contactPerson: String

        public var updatedAt: String?

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var address2: String?

        public var isEnabledForRecon: Bool?

        public var vatNo: String?

        public var storeActiveFrom: String?

        public var phone: Int

        public var sId: String

        public var address1: String

        public var orderIntegrationId: String?

        public var fulfillmentChannel: String

        public var companyId: Int

        public var mallName: String?

        public var locationType: String

        public var longitude: Double

        public var storeEmail: String

        public var loginUsername: String

        public var latitude: Double

        public var city: String

        public var isActive: Bool?

        public var code: String?

        public var parentStoreId: Int?

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case state

            case country

            case name

            case brandId = "brand_id"

            case pincode

            case storeAddressJson = "store_address_json"

            case isArchived = "is_archived"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case address2

            case isEnabledForRecon = "is_enabled_for_recon"

            case vatNo = "vat_no"

            case storeActiveFrom = "store_active_from"

            case phone

            case sId = "s_id"

            case address1

            case orderIntegrationId = "order_integration_id"

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case mallName = "mall_name"

            case locationType = "location_type"

            case longitude

            case storeEmail = "store_email"

            case loginUsername = "login_username"

            case latitude

            case city

            case isActive = "is_active"

            case code

            case parentStoreId = "parent_store_id"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.state = state

            self.country = country

            self.name = name

            self.brandId = brandId

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.isArchived = isArchived

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.address2 = address2

            self.isEnabledForRecon = isEnabledForRecon

            self.vatNo = vatNo

            self.storeActiveFrom = storeActiveFrom

            self.phone = phone

            self.sId = sId

            self.address1 = address1

            self.orderIntegrationId = orderIntegrationId

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.mallName = mallName

            self.locationType = locationType

            self.longitude = longitude

            self.storeEmail = storeEmail

            self.loginUsername = loginUsername

            self.latitude = latitude

            self.city = city

            self.isActive = isActive

            self.code = code

            self.parentStoreId = parentStoreId

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            phone = try container.decode(Int.self, forKey: .phone)

            sId = try container.decode(String.self, forKey: .sId)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            latitude = try container.decode(Double.self, forKey: .latitude)

            city = try container.decode(String.self, forKey: .city)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallArea, forKey: .mallArea)
        }
    }
}
