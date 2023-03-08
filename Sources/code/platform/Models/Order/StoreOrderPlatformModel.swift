

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var locationType: String

        public var state: String

        public var name: String

        public var city: String

        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var vatNo: String?

        public var address1: String

        public var country: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var pincode: String

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var orderIntegrationId: String?

        public var mallName: String?

        public var createdAt: String

        public var storeEmail: String

        public var parentStoreId: Int?

        public var contactPerson: String

        public var address2: String?

        public var storeAddressJson: StoreAddress?

        public var code: String?

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var sId: String

        public var phone: Int

        public var mallArea: String?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var isArchived: Bool?

        public var loginUsername: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case locationType = "location_type"

            case state

            case name

            case city

            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case vatNo = "vat_no"

            case address1

            case country

            case brandStoreTags = "brand_store_tags"

            case latitude

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case orderIntegrationId = "order_integration_id"

            case mallName = "mall_name"

            case createdAt = "created_at"

            case storeEmail = "store_email"

            case parentStoreId = "parent_store_id"

            case contactPerson = "contact_person"

            case address2

            case storeAddressJson = "store_address_json"

            case code

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case sId = "s_id"

            case phone

            case mallArea = "mall_area"

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case isArchived = "is_archived"

            case loginUsername = "login_username"

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.locationType = locationType

            self.state = state

            self.name = name

            self.city = city

            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.vatNo = vatNo

            self.address1 = address1

            self.country = country

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.orderIntegrationId = orderIntegrationId

            self.mallName = mallName

            self.createdAt = createdAt

            self.storeEmail = storeEmail

            self.parentStoreId = parentStoreId

            self.contactPerson = contactPerson

            self.address2 = address2

            self.storeAddressJson = storeAddressJson

            self.code = code

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.sId = sId

            self.phone = phone

            self.mallArea = mallArea

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.isArchived = isArchived

            self.loginUsername = loginUsername

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            country = try container.decode(String.self, forKey: .country)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(String.self, forKey: .pincode)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                code = try container.decode(String.self, forKey: .code)

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

            sId = try container.decode(String.self, forKey: .sId)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

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
        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var locationType: String

        public var state: String

        public var name: String

        public var city: String

        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var vatNo: String?

        public var address1: String

        public var country: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var pincode: String

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var orderIntegrationId: String?

        public var mallName: String?

        public var createdAt: String

        public var storeEmail: String

        public var parentStoreId: Int?

        public var contactPerson: String

        public var address2: String?

        public var storeAddressJson: StoreAddress?

        public var code: String?

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var sId: String

        public var phone: Int

        public var mallArea: String?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var isArchived: Bool?

        public var loginUsername: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case locationType = "location_type"

            case state

            case name

            case city

            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case vatNo = "vat_no"

            case address1

            case country

            case brandStoreTags = "brand_store_tags"

            case latitude

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case orderIntegrationId = "order_integration_id"

            case mallName = "mall_name"

            case createdAt = "created_at"

            case storeEmail = "store_email"

            case parentStoreId = "parent_store_id"

            case contactPerson = "contact_person"

            case address2

            case storeAddressJson = "store_address_json"

            case code

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case sId = "s_id"

            case phone

            case mallArea = "mall_area"

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case isArchived = "is_archived"

            case loginUsername = "login_username"

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.locationType = locationType

            self.state = state

            self.name = name

            self.city = city

            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.vatNo = vatNo

            self.address1 = address1

            self.country = country

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.orderIntegrationId = orderIntegrationId

            self.mallName = mallName

            self.createdAt = createdAt

            self.storeEmail = storeEmail

            self.parentStoreId = parentStoreId

            self.contactPerson = contactPerson

            self.address2 = address2

            self.storeAddressJson = storeAddressJson

            self.code = code

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.sId = sId

            self.phone = phone

            self.mallArea = mallArea

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.isArchived = isArchived

            self.loginUsername = loginUsername

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            country = try container.decode(String.self, forKey: .country)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(String.self, forKey: .pincode)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                code = try container.decode(String.self, forKey: .code)

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

            sId = try container.decode(String.self, forKey: .sId)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
