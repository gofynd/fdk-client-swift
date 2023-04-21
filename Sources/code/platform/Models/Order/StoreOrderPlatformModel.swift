

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallArea: String?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var longitude: Double

        public var createdAt: String

        public var isEnabledForRecon: Bool?

        public var packagingMaterialCount: Int?

        public var fulfillmentChannel: String

        public var isArchived: Bool?

        public var brandStoreTags: [String]?

        public var meta: StoreMeta

        public var country: String

        public var alohomoraUserId: Int?

        public var phone: Int

        public var parentStoreId: Int?

        public var state: String

        public var vatNo: String?

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var mallName: String?

        public var code: String?

        public var storeEmail: String

        public var brandId: [String: Any]?

        public var latitude: Double

        public var name: String

        public var pincode: String

        public var address1: String

        public var companyId: Int

        public var contactPerson: String

        public var orderIntegrationId: String?

        public var loginUsername: String

        public var sId: String

        public var city: String

        public var isActive: Bool?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case mallArea = "mall_area"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case longitude

            case createdAt = "created_at"

            case isEnabledForRecon = "is_enabled_for_recon"

            case packagingMaterialCount = "packaging_material_count"

            case fulfillmentChannel = "fulfillment_channel"

            case isArchived = "is_archived"

            case brandStoreTags = "brand_store_tags"

            case meta

            case country

            case alohomoraUserId = "alohomora_user_id"

            case phone

            case parentStoreId = "parent_store_id"

            case state

            case vatNo = "vat_no"

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case mallName = "mall_name"

            case code

            case storeEmail = "store_email"

            case brandId = "brand_id"

            case latitude

            case name

            case pincode

            case address1

            case companyId = "company_id"

            case contactPerson = "contact_person"

            case orderIntegrationId = "order_integration_id"

            case loginUsername = "login_username"

            case sId = "s_id"

            case city

            case isActive = "is_active"

            case address2
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallArea = mallArea

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.longitude = longitude

            self.createdAt = createdAt

            self.isEnabledForRecon = isEnabledForRecon

            self.packagingMaterialCount = packagingMaterialCount

            self.fulfillmentChannel = fulfillmentChannel

            self.isArchived = isArchived

            self.brandStoreTags = brandStoreTags

            self.meta = meta

            self.country = country

            self.alohomoraUserId = alohomoraUserId

            self.phone = phone

            self.parentStoreId = parentStoreId

            self.state = state

            self.vatNo = vatNo

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.mallName = mallName

            self.code = code

            self.storeEmail = storeEmail

            self.brandId = brandId

            self.latitude = latitude

            self.name = name

            self.pincode = pincode

            self.address1 = address1

            self.companyId = companyId

            self.contactPerson = contactPerson

            self.orderIntegrationId = orderIntegrationId

            self.loginUsername = loginUsername

            self.sId = sId

            self.city = city

            self.isActive = isActive

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            sId = try container.decode(String.self, forKey: .sId)

            city = try container.decode(String.self, forKey: .city)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallArea: String?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var longitude: Double

        public var createdAt: String

        public var isEnabledForRecon: Bool?

        public var packagingMaterialCount: Int?

        public var fulfillmentChannel: String

        public var isArchived: Bool?

        public var brandStoreTags: [String]?

        public var meta: StoreMeta

        public var country: String

        public var alohomoraUserId: Int?

        public var phone: Int

        public var parentStoreId: Int?

        public var state: String

        public var vatNo: String?

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var mallName: String?

        public var code: String?

        public var storeEmail: String

        public var brandId: [String: Any]?

        public var latitude: Double

        public var name: String

        public var pincode: String

        public var address1: String

        public var companyId: Int

        public var contactPerson: String

        public var orderIntegrationId: String?

        public var loginUsername: String

        public var sId: String

        public var city: String

        public var isActive: Bool?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case mallArea = "mall_area"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case longitude

            case createdAt = "created_at"

            case isEnabledForRecon = "is_enabled_for_recon"

            case packagingMaterialCount = "packaging_material_count"

            case fulfillmentChannel = "fulfillment_channel"

            case isArchived = "is_archived"

            case brandStoreTags = "brand_store_tags"

            case meta

            case country

            case alohomoraUserId = "alohomora_user_id"

            case phone

            case parentStoreId = "parent_store_id"

            case state

            case vatNo = "vat_no"

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case mallName = "mall_name"

            case code

            case storeEmail = "store_email"

            case brandId = "brand_id"

            case latitude

            case name

            case pincode

            case address1

            case companyId = "company_id"

            case contactPerson = "contact_person"

            case orderIntegrationId = "order_integration_id"

            case loginUsername = "login_username"

            case sId = "s_id"

            case city

            case isActive = "is_active"

            case address2
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallArea = mallArea

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.longitude = longitude

            self.createdAt = createdAt

            self.isEnabledForRecon = isEnabledForRecon

            self.packagingMaterialCount = packagingMaterialCount

            self.fulfillmentChannel = fulfillmentChannel

            self.isArchived = isArchived

            self.brandStoreTags = brandStoreTags

            self.meta = meta

            self.country = country

            self.alohomoraUserId = alohomoraUserId

            self.phone = phone

            self.parentStoreId = parentStoreId

            self.state = state

            self.vatNo = vatNo

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.mallName = mallName

            self.code = code

            self.storeEmail = storeEmail

            self.brandId = brandId

            self.latitude = latitude

            self.name = name

            self.pincode = pincode

            self.address1 = address1

            self.companyId = companyId

            self.contactPerson = contactPerson

            self.orderIntegrationId = orderIntegrationId

            self.loginUsername = loginUsername

            self.sId = sId

            self.city = city

            self.isActive = isActive

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            sId = try container.decode(String.self, forKey: .sId)

            city = try container.decode(String.self, forKey: .city)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
