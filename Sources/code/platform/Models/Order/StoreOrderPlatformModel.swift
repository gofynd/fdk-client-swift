

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var loginUsername: String

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var isArchived: Bool?

        public var address1: String

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var state: String

        public var latitude: Double

        public var brandStoreTags: [String]?

        public var brandId: [String: Any]?

        public var parentStoreId: Int?

        public var phone: Int

        public var address2: String?

        public var packagingMaterialCount: Int?

        public var locationType: String

        public var sId: String

        public var meta: StoreMeta

        public var createdAt: String

        public var updatedAt: String?

        public var companyId: Int

        public var fulfillmentChannel: String

        public var orderIntegrationId: String?

        public var storeEmail: String

        public var vatNo: String?

        public var pincode: String

        public var alohomoraUserId: Int?

        public var mallName: String?

        public var storeActiveFrom: String?

        public var mallArea: String?

        public var name: String

        public var country: String

        public var contactPerson: String

        public var city: String

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case loginUsername = "login_username"

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case isArchived = "is_archived"

            case address1

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case state

            case latitude

            case brandStoreTags = "brand_store_tags"

            case brandId = "brand_id"

            case parentStoreId = "parent_store_id"

            case phone

            case address2

            case packagingMaterialCount = "packaging_material_count"

            case locationType = "location_type"

            case sId = "s_id"

            case meta

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case orderIntegrationId = "order_integration_id"

            case storeEmail = "store_email"

            case vatNo = "vat_no"

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case mallName = "mall_name"

            case storeActiveFrom = "store_active_from"

            case mallArea = "mall_area"

            case name

            case country

            case contactPerson = "contact_person"

            case city

            case longitude
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.loginUsername = loginUsername

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.isArchived = isArchived

            self.address1 = address1

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.state = state

            self.latitude = latitude

            self.brandStoreTags = brandStoreTags

            self.brandId = brandId

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.address2 = address2

            self.packagingMaterialCount = packagingMaterialCount

            self.locationType = locationType

            self.sId = sId

            self.meta = meta

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.orderIntegrationId = orderIntegrationId

            self.storeEmail = storeEmail

            self.vatNo = vatNo

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.mallName = mallName

            self.storeActiveFrom = storeActiveFrom

            self.mallArea = mallArea

            self.name = name

            self.country = country

            self.contactPerson = contactPerson

            self.city = city

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

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

            state = try container.decode(String.self, forKey: .state)

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            sId = try container.decode(String.self, forKey: .sId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            name = try container.decode(String.self, forKey: .name)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var loginUsername: String

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var isArchived: Bool?

        public var address1: String

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var state: String

        public var latitude: Double

        public var brandStoreTags: [String]?

        public var brandId: [String: Any]?

        public var parentStoreId: Int?

        public var phone: Int

        public var address2: String?

        public var packagingMaterialCount: Int?

        public var locationType: String

        public var sId: String

        public var meta: StoreMeta

        public var createdAt: String

        public var updatedAt: String?

        public var companyId: Int

        public var fulfillmentChannel: String

        public var orderIntegrationId: String?

        public var storeEmail: String

        public var vatNo: String?

        public var pincode: String

        public var alohomoraUserId: Int?

        public var mallName: String?

        public var storeActiveFrom: String?

        public var mallArea: String?

        public var name: String

        public var country: String

        public var contactPerson: String

        public var city: String

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case loginUsername = "login_username"

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case isArchived = "is_archived"

            case address1

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case state

            case latitude

            case brandStoreTags = "brand_store_tags"

            case brandId = "brand_id"

            case parentStoreId = "parent_store_id"

            case phone

            case address2

            case packagingMaterialCount = "packaging_material_count"

            case locationType = "location_type"

            case sId = "s_id"

            case meta

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case orderIntegrationId = "order_integration_id"

            case storeEmail = "store_email"

            case vatNo = "vat_no"

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case mallName = "mall_name"

            case storeActiveFrom = "store_active_from"

            case mallArea = "mall_area"

            case name

            case country

            case contactPerson = "contact_person"

            case city

            case longitude
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.loginUsername = loginUsername

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.isArchived = isArchived

            self.address1 = address1

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.state = state

            self.latitude = latitude

            self.brandStoreTags = brandStoreTags

            self.brandId = brandId

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.address2 = address2

            self.packagingMaterialCount = packagingMaterialCount

            self.locationType = locationType

            self.sId = sId

            self.meta = meta

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.orderIntegrationId = orderIntegrationId

            self.storeEmail = storeEmail

            self.vatNo = vatNo

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.mallName = mallName

            self.storeActiveFrom = storeActiveFrom

            self.mallArea = mallArea

            self.name = name

            self.country = country

            self.contactPerson = contactPerson

            self.city = city

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

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

            state = try container.decode(String.self, forKey: .state)

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            sId = try container.decode(String.self, forKey: .sId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            name = try container.decode(String.self, forKey: .name)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}
