

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var storeEmail: String

        public var isActive: Bool?

        public var country: String

        public var mallArea: String?

        public var code: String?

        public var storeAddressJson: StoreAddress?

        public var state: String

        public var locationType: String

        public var isArchived: Bool?

        public var brandId: [String: Any]?

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var address2: String?

        public var name: String

        public var mallName: String?

        public var latitude: Double

        public var isEnabledForRecon: Bool?

        public var loginUsername: String

        public var phone: Int

        public var meta: StoreMeta

        public var vatNo: String?

        public var updatedAt: String?

        public var sId: String

        public var parentStoreId: Int?

        public var storeActiveFrom: String?

        public var orderIntegrationId: String?

        public var brandStoreTags: [String]?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var contactPerson: String

        public var pincode: String

        public var address1: String

        public var city: String

        public var createdAt: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case storeEmail = "store_email"

            case isActive = "is_active"

            case country

            case mallArea = "mall_area"

            case code

            case storeAddressJson = "store_address_json"

            case state

            case locationType = "location_type"

            case isArchived = "is_archived"

            case brandId = "brand_id"

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case address2

            case name

            case mallName = "mall_name"

            case latitude

            case isEnabledForRecon = "is_enabled_for_recon"

            case loginUsername = "login_username"

            case phone

            case meta

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case sId = "s_id"

            case parentStoreId = "parent_store_id"

            case storeActiveFrom = "store_active_from"

            case orderIntegrationId = "order_integration_id"

            case brandStoreTags = "brand_store_tags"

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case contactPerson = "contact_person"

            case pincode

            case address1

            case city

            case createdAt = "created_at"

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.storeEmail = storeEmail

            self.isActive = isActive

            self.country = country

            self.mallArea = mallArea

            self.code = code

            self.storeAddressJson = storeAddressJson

            self.state = state

            self.locationType = locationType

            self.isArchived = isArchived

            self.brandId = brandId

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.address2 = address2

            self.name = name

            self.mallName = mallName

            self.latitude = latitude

            self.isEnabledForRecon = isEnabledForRecon

            self.loginUsername = loginUsername

            self.phone = phone

            self.meta = meta

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.sId = sId

            self.parentStoreId = parentStoreId

            self.storeActiveFrom = storeActiveFrom

            self.orderIntegrationId = orderIntegrationId

            self.brandStoreTags = brandStoreTags

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.address1 = address1

            self.city = city

            self.createdAt = createdAt

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            locationType = try container.decode(String.self, forKey: .locationType)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            phone = try container.decode(Int.self, forKey: .phone)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

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

            sId = try container.decode(String.self, forKey: .sId)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            city = try container.decode(String.self, forKey: .city)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

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
        public var storeEmail: String

        public var isActive: Bool?

        public var country: String

        public var mallArea: String?

        public var code: String?

        public var storeAddressJson: StoreAddress?

        public var state: String

        public var locationType: String

        public var isArchived: Bool?

        public var brandId: [String: Any]?

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var address2: String?

        public var name: String

        public var mallName: String?

        public var latitude: Double

        public var isEnabledForRecon: Bool?

        public var loginUsername: String

        public var phone: Int

        public var meta: StoreMeta

        public var vatNo: String?

        public var updatedAt: String?

        public var sId: String

        public var parentStoreId: Int?

        public var storeActiveFrom: String?

        public var orderIntegrationId: String?

        public var brandStoreTags: [String]?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var contactPerson: String

        public var pincode: String

        public var address1: String

        public var city: String

        public var createdAt: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case storeEmail = "store_email"

            case isActive = "is_active"

            case country

            case mallArea = "mall_area"

            case code

            case storeAddressJson = "store_address_json"

            case state

            case locationType = "location_type"

            case isArchived = "is_archived"

            case brandId = "brand_id"

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case address2

            case name

            case mallName = "mall_name"

            case latitude

            case isEnabledForRecon = "is_enabled_for_recon"

            case loginUsername = "login_username"

            case phone

            case meta

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case sId = "s_id"

            case parentStoreId = "parent_store_id"

            case storeActiveFrom = "store_active_from"

            case orderIntegrationId = "order_integration_id"

            case brandStoreTags = "brand_store_tags"

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case contactPerson = "contact_person"

            case pincode

            case address1

            case city

            case createdAt = "created_at"

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.storeEmail = storeEmail

            self.isActive = isActive

            self.country = country

            self.mallArea = mallArea

            self.code = code

            self.storeAddressJson = storeAddressJson

            self.state = state

            self.locationType = locationType

            self.isArchived = isArchived

            self.brandId = brandId

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.address2 = address2

            self.name = name

            self.mallName = mallName

            self.latitude = latitude

            self.isEnabledForRecon = isEnabledForRecon

            self.loginUsername = loginUsername

            self.phone = phone

            self.meta = meta

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.sId = sId

            self.parentStoreId = parentStoreId

            self.storeActiveFrom = storeActiveFrom

            self.orderIntegrationId = orderIntegrationId

            self.brandStoreTags = brandStoreTags

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.address1 = address1

            self.city = city

            self.createdAt = createdAt

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            locationType = try container.decode(String.self, forKey: .locationType)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            phone = try container.decode(Int.self, forKey: .phone)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

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

            sId = try container.decode(String.self, forKey: .sId)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            city = try container.decode(String.self, forKey: .city)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
