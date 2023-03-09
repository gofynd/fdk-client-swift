

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var parentStoreId: Int?

        public var alohomoraUserId: Int?

        public var createdAt: String

        public var state: String

        public var mallName: String?

        public var contactPerson: String

        public var mallArea: String?

        public var companyId: Int

        public var phone: Int

        public var loginUsername: String

        public var isEnabledForRecon: Bool?

        public var name: String

        public var storeEmail: String

        public var isArchived: Bool?

        public var isActive: Bool?

        public var fulfillmentChannel: String

        public var sId: String

        public var pincode: String

        public var city: String

        public var address2: String?

        public var longitude: Double

        public var vatNo: String?

        public var meta: StoreMeta

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var address1: String

        public var updatedAt: String?

        public var code: String?

        public var brandStoreTags: [String]?

        public var locationType: String

        public var packagingMaterialCount: Int?

        public var storeActiveFrom: String?

        public var latitude: Double

        public var brandId: [String: Any]?

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case parentStoreId = "parent_store_id"

            case alohomoraUserId = "alohomora_user_id"

            case createdAt = "created_at"

            case state

            case mallName = "mall_name"

            case contactPerson = "contact_person"

            case mallArea = "mall_area"

            case companyId = "company_id"

            case phone

            case loginUsername = "login_username"

            case isEnabledForRecon = "is_enabled_for_recon"

            case name

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case isActive = "is_active"

            case fulfillmentChannel = "fulfillment_channel"

            case sId = "s_id"

            case pincode

            case city

            case address2

            case longitude

            case vatNo = "vat_no"

            case meta

            case storeAddressJson = "store_address_json"

            case country

            case address1

            case updatedAt = "updated_at"

            case code

            case brandStoreTags = "brand_store_tags"

            case locationType = "location_type"

            case packagingMaterialCount = "packaging_material_count"

            case storeActiveFrom = "store_active_from"

            case latitude

            case brandId = "brand_id"

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.parentStoreId = parentStoreId

            self.alohomoraUserId = alohomoraUserId

            self.createdAt = createdAt

            self.state = state

            self.mallName = mallName

            self.contactPerson = contactPerson

            self.mallArea = mallArea

            self.companyId = companyId

            self.phone = phone

            self.loginUsername = loginUsername

            self.isEnabledForRecon = isEnabledForRecon

            self.name = name

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.isActive = isActive

            self.fulfillmentChannel = fulfillmentChannel

            self.sId = sId

            self.pincode = pincode

            self.city = city

            self.address2 = address2

            self.longitude = longitude

            self.vatNo = vatNo

            self.meta = meta

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.address1 = address1

            self.updatedAt = updatedAt

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.locationType = locationType

            self.packagingMaterialCount = packagingMaterialCount

            self.storeActiveFrom = storeActiveFrom

            self.latitude = latitude

            self.brandId = brandId

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            phone = try container.decode(Int.self, forKey: .phone)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var parentStoreId: Int?

        public var alohomoraUserId: Int?

        public var createdAt: String

        public var state: String

        public var mallName: String?

        public var contactPerson: String

        public var mallArea: String?

        public var companyId: Int

        public var phone: Int

        public var loginUsername: String

        public var isEnabledForRecon: Bool?

        public var name: String

        public var storeEmail: String

        public var isArchived: Bool?

        public var isActive: Bool?

        public var fulfillmentChannel: String

        public var sId: String

        public var pincode: String

        public var city: String

        public var address2: String?

        public var longitude: Double

        public var vatNo: String?

        public var meta: StoreMeta

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var address1: String

        public var updatedAt: String?

        public var code: String?

        public var brandStoreTags: [String]?

        public var locationType: String

        public var packagingMaterialCount: Int?

        public var storeActiveFrom: String?

        public var latitude: Double

        public var brandId: [String: Any]?

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case parentStoreId = "parent_store_id"

            case alohomoraUserId = "alohomora_user_id"

            case createdAt = "created_at"

            case state

            case mallName = "mall_name"

            case contactPerson = "contact_person"

            case mallArea = "mall_area"

            case companyId = "company_id"

            case phone

            case loginUsername = "login_username"

            case isEnabledForRecon = "is_enabled_for_recon"

            case name

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case isActive = "is_active"

            case fulfillmentChannel = "fulfillment_channel"

            case sId = "s_id"

            case pincode

            case city

            case address2

            case longitude

            case vatNo = "vat_no"

            case meta

            case storeAddressJson = "store_address_json"

            case country

            case address1

            case updatedAt = "updated_at"

            case code

            case brandStoreTags = "brand_store_tags"

            case locationType = "location_type"

            case packagingMaterialCount = "packaging_material_count"

            case storeActiveFrom = "store_active_from"

            case latitude

            case brandId = "brand_id"

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.parentStoreId = parentStoreId

            self.alohomoraUserId = alohomoraUserId

            self.createdAt = createdAt

            self.state = state

            self.mallName = mallName

            self.contactPerson = contactPerson

            self.mallArea = mallArea

            self.companyId = companyId

            self.phone = phone

            self.loginUsername = loginUsername

            self.isEnabledForRecon = isEnabledForRecon

            self.name = name

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.isActive = isActive

            self.fulfillmentChannel = fulfillmentChannel

            self.sId = sId

            self.pincode = pincode

            self.city = city

            self.address2 = address2

            self.longitude = longitude

            self.vatNo = vatNo

            self.meta = meta

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.address1 = address1

            self.updatedAt = updatedAt

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.locationType = locationType

            self.packagingMaterialCount = packagingMaterialCount

            self.storeActiveFrom = storeActiveFrom

            self.latitude = latitude

            self.brandId = brandId

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            phone = try container.decode(Int.self, forKey: .phone)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
        }
    }
}
