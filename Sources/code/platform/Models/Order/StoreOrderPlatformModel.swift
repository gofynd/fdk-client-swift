

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var loginUsername: String

        public var parentStoreId: Int?

        public var updatedAt: String?

        public var city: String

        public var mallArea: String?

        public var code: String?

        public var fulfillmentChannel: String

        public var vatNo: String?

        public var latitude: Double

        public var sId: String

        public var address2: String?

        public var brandStoreTags: [String]?

        public var mallName: String?

        public var country: String

        public var isActive: Bool?

        public var pincode: String

        public var phone: Int

        public var storeEmail: String

        public var isArchived: Bool?

        public var locationType: String

        public var alohomoraUserId: Int?

        public var longitude: Double

        public var name: String

        public var companyId: Int

        public var state: String

        public var storeAddressJson: StoreAddress?

        public var address1: String

        public var storeActiveFrom: String?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case loginUsername = "login_username"

            case parentStoreId = "parent_store_id"

            case updatedAt = "updated_at"

            case city

            case mallArea = "mall_area"

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case vatNo = "vat_no"

            case latitude

            case sId = "s_id"

            case address2

            case brandStoreTags = "brand_store_tags"

            case mallName = "mall_name"

            case country

            case isActive = "is_active"

            case pincode

            case phone

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case locationType = "location_type"

            case alohomoraUserId = "alohomora_user_id"

            case longitude

            case name

            case companyId = "company_id"

            case state

            case storeAddressJson = "store_address_json"

            case address1

            case storeActiveFrom = "store_active_from"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandId = brandId

            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.loginUsername = loginUsername

            self.parentStoreId = parentStoreId

            self.updatedAt = updatedAt

            self.city = city

            self.mallArea = mallArea

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.vatNo = vatNo

            self.latitude = latitude

            self.sId = sId

            self.address2 = address2

            self.brandStoreTags = brandStoreTags

            self.mallName = mallName

            self.country = country

            self.isActive = isActive

            self.pincode = pincode

            self.phone = phone

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.locationType = locationType

            self.alohomoraUserId = alohomoraUserId

            self.longitude = longitude

            self.name = name

            self.companyId = companyId

            self.state = state

            self.storeAddressJson = storeAddressJson

            self.address1 = address1

            self.storeActiveFrom = storeActiveFrom
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            city = try container.decode(String.self, forKey: .city)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(Int.self, forKey: .phone)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var createdAt: String

        public var orderIntegrationId: String?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var loginUsername: String

        public var parentStoreId: Int?

        public var updatedAt: String?

        public var city: String

        public var mallArea: String?

        public var code: String?

        public var fulfillmentChannel: String

        public var vatNo: String?

        public var latitude: Double

        public var sId: String

        public var address2: String?

        public var brandStoreTags: [String]?

        public var mallName: String?

        public var country: String

        public var isActive: Bool?

        public var pincode: String

        public var phone: Int

        public var storeEmail: String

        public var isArchived: Bool?

        public var locationType: String

        public var alohomoraUserId: Int?

        public var longitude: Double

        public var name: String

        public var companyId: Int

        public var state: String

        public var storeAddressJson: StoreAddress?

        public var address1: String

        public var storeActiveFrom: String?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case loginUsername = "login_username"

            case parentStoreId = "parent_store_id"

            case updatedAt = "updated_at"

            case city

            case mallArea = "mall_area"

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case vatNo = "vat_no"

            case latitude

            case sId = "s_id"

            case address2

            case brandStoreTags = "brand_store_tags"

            case mallName = "mall_name"

            case country

            case isActive = "is_active"

            case pincode

            case phone

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case locationType = "location_type"

            case alohomoraUserId = "alohomora_user_id"

            case longitude

            case name

            case companyId = "company_id"

            case state

            case storeAddressJson = "store_address_json"

            case address1

            case storeActiveFrom = "store_active_from"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandId = brandId

            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.loginUsername = loginUsername

            self.parentStoreId = parentStoreId

            self.updatedAt = updatedAt

            self.city = city

            self.mallArea = mallArea

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.vatNo = vatNo

            self.latitude = latitude

            self.sId = sId

            self.address2 = address2

            self.brandStoreTags = brandStoreTags

            self.mallName = mallName

            self.country = country

            self.isActive = isActive

            self.pincode = pincode

            self.phone = phone

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.locationType = locationType

            self.alohomoraUserId = alohomoraUserId

            self.longitude = longitude

            self.name = name

            self.companyId = companyId

            self.state = state

            self.storeAddressJson = storeAddressJson

            self.address1 = address1

            self.storeActiveFrom = storeActiveFrom
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            city = try container.decode(String.self, forKey: .city)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(Int.self, forKey: .phone)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)
        }
    }
}
