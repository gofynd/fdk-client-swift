

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var sId: String

        public var address2: String?

        public var meta: StoreMeta

        public var city: String

        public var isEnabledForRecon: Bool?

        public var contactPerson: String

        public var storeEmail: String

        public var state: String

        public var orderIntegrationId: String?

        public var storeAddressJson: StoreAddress?

        public var brandId: [String: Any]?

        public var isActive: Bool?

        public var latitude: Double

        public var country: String

        public var locationType: String

        public var loginUsername: String

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var longitude: Double

        public var alohomoraUserId: Int?

        public var isArchived: Bool?

        public var brandStoreTags: [String]?

        public var vatNo: String?

        public var address1: String

        public var companyId: Int

        public var code: String?

        public var name: String

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var phone: Int

        public var mallName: String?

        public var mallArea: String?

        public var pincode: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case sId = "s_id"

            case address2

            case meta

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case contactPerson = "contact_person"

            case storeEmail = "store_email"

            case state

            case orderIntegrationId = "order_integration_id"

            case storeAddressJson = "store_address_json"

            case brandId = "brand_id"

            case isActive = "is_active"

            case latitude

            case country

            case locationType = "location_type"

            case loginUsername = "login_username"

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case longitude

            case alohomoraUserId = "alohomora_user_id"

            case isArchived = "is_archived"

            case brandStoreTags = "brand_store_tags"

            case vatNo = "vat_no"

            case address1

            case companyId = "company_id"

            case code

            case name

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case phone

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case pincode

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.sId = sId

            self.address2 = address2

            self.meta = meta

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.contactPerson = contactPerson

            self.storeEmail = storeEmail

            self.state = state

            self.orderIntegrationId = orderIntegrationId

            self.storeAddressJson = storeAddressJson

            self.brandId = brandId

            self.isActive = isActive

            self.latitude = latitude

            self.country = country

            self.locationType = locationType

            self.loginUsername = loginUsername

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.alohomoraUserId = alohomoraUserId

            self.isArchived = isArchived

            self.brandStoreTags = brandStoreTags

            self.vatNo = vatNo

            self.address1 = address1

            self.companyId = companyId

            self.code = code

            self.name = name

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.mallName = mallName

            self.mallArea = mallArea

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            phone = try container.decode(Int.self, forKey: .phone)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
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

        public var address2: String?

        public var meta: StoreMeta

        public var city: String

        public var isEnabledForRecon: Bool?

        public var contactPerson: String

        public var storeEmail: String

        public var state: String

        public var orderIntegrationId: String?

        public var storeAddressJson: StoreAddress?

        public var brandId: [String: Any]?

        public var isActive: Bool?

        public var latitude: Double

        public var country: String

        public var locationType: String

        public var loginUsername: String

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var longitude: Double

        public var alohomoraUserId: Int?

        public var isArchived: Bool?

        public var brandStoreTags: [String]?

        public var vatNo: String?

        public var address1: String

        public var companyId: Int

        public var code: String?

        public var name: String

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var phone: Int

        public var mallName: String?

        public var mallArea: String?

        public var pincode: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case sId = "s_id"

            case address2

            case meta

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case contactPerson = "contact_person"

            case storeEmail = "store_email"

            case state

            case orderIntegrationId = "order_integration_id"

            case storeAddressJson = "store_address_json"

            case brandId = "brand_id"

            case isActive = "is_active"

            case latitude

            case country

            case locationType = "location_type"

            case loginUsername = "login_username"

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case longitude

            case alohomoraUserId = "alohomora_user_id"

            case isArchived = "is_archived"

            case brandStoreTags = "brand_store_tags"

            case vatNo = "vat_no"

            case address1

            case companyId = "company_id"

            case code

            case name

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case phone

            case mallName = "mall_name"

            case mallArea = "mall_area"

            case pincode

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.sId = sId

            self.address2 = address2

            self.meta = meta

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.contactPerson = contactPerson

            self.storeEmail = storeEmail

            self.state = state

            self.orderIntegrationId = orderIntegrationId

            self.storeAddressJson = storeAddressJson

            self.brandId = brandId

            self.isActive = isActive

            self.latitude = latitude

            self.country = country

            self.locationType = locationType

            self.loginUsername = loginUsername

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.alohomoraUserId = alohomoraUserId

            self.isArchived = isArchived

            self.brandStoreTags = brandStoreTags

            self.vatNo = vatNo

            self.address1 = address1

            self.companyId = companyId

            self.code = code

            self.name = name

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.mallName = mallName

            self.mallArea = mallArea

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            state = try container.decode(String.self, forKey: .state)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            phone = try container.decode(Int.self, forKey: .phone)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
