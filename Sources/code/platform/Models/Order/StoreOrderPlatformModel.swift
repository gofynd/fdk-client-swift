

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var packagingMaterialCount: Int?

        public var locationType: String

        public var fulfillmentChannel: String

        public var isEnabledForRecon: Bool?

        public var storeEmail: String

        public var address2: String?

        public var mallArea: String?

        public var sId: String

        public var city: String

        public var phone: Int

        public var longitude: Double

        public var pincode: String

        public var loginUsername: String

        public var isActive: Bool?

        public var meta: StoreMeta

        public var isArchived: Bool?

        public var country: String

        public var companyId: Int

        public var vatNo: String?

        public var parentStoreId: Int?

        public var name: String

        public var orderIntegrationId: String?

        public var contactPerson: String

        public var state: String

        public var createdAt: String

        public var brandId: [String: Any]?

        public var storeAddressJson: StoreAddress?

        public var latitude: Double

        public var code: String?

        public var brandStoreTags: [String]?

        public var address1: String

        public var mallName: String?

        public var updatedAt: String?

        public var alohomoraUserId: Int?

        public var storeActiveFrom: String?

        public enum CodingKeys: String, CodingKey {
            case packagingMaterialCount = "packaging_material_count"

            case locationType = "location_type"

            case fulfillmentChannel = "fulfillment_channel"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeEmail = "store_email"

            case address2

            case mallArea = "mall_area"

            case sId = "s_id"

            case city

            case phone

            case longitude

            case pincode

            case loginUsername = "login_username"

            case isActive = "is_active"

            case meta

            case isArchived = "is_archived"

            case country

            case companyId = "company_id"

            case vatNo = "vat_no"

            case parentStoreId = "parent_store_id"

            case name

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"

            case state

            case createdAt = "created_at"

            case brandId = "brand_id"

            case storeAddressJson = "store_address_json"

            case latitude

            case code

            case brandStoreTags = "brand_store_tags"

            case address1

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case alohomoraUserId = "alohomora_user_id"

            case storeActiveFrom = "store_active_from"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.packagingMaterialCount = packagingMaterialCount

            self.locationType = locationType

            self.fulfillmentChannel = fulfillmentChannel

            self.isEnabledForRecon = isEnabledForRecon

            self.storeEmail = storeEmail

            self.address2 = address2

            self.mallArea = mallArea

            self.sId = sId

            self.city = city

            self.phone = phone

            self.longitude = longitude

            self.pincode = pincode

            self.loginUsername = loginUsername

            self.isActive = isActive

            self.meta = meta

            self.isArchived = isArchived

            self.country = country

            self.companyId = companyId

            self.vatNo = vatNo

            self.parentStoreId = parentStoreId

            self.name = name

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson

            self.state = state

            self.createdAt = createdAt

            self.brandId = brandId

            self.storeAddressJson = storeAddressJson

            self.latitude = latitude

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.address1 = address1

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.alohomoraUserId = alohomoraUserId

            self.storeActiveFrom = storeActiveFrom
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            sId = try container.decode(String.self, forKey: .sId)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(String.self, forKey: .pincode)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

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
        public var packagingMaterialCount: Int?

        public var locationType: String

        public var fulfillmentChannel: String

        public var isEnabledForRecon: Bool?

        public var storeEmail: String

        public var address2: String?

        public var mallArea: String?

        public var sId: String

        public var city: String

        public var phone: Int

        public var longitude: Double

        public var pincode: String

        public var loginUsername: String

        public var isActive: Bool?

        public var meta: StoreMeta

        public var isArchived: Bool?

        public var country: String

        public var companyId: Int

        public var vatNo: String?

        public var parentStoreId: Int?

        public var name: String

        public var orderIntegrationId: String?

        public var contactPerson: String

        public var state: String

        public var createdAt: String

        public var brandId: [String: Any]?

        public var storeAddressJson: StoreAddress?

        public var latitude: Double

        public var code: String?

        public var brandStoreTags: [String]?

        public var address1: String

        public var mallName: String?

        public var updatedAt: String?

        public var alohomoraUserId: Int?

        public var storeActiveFrom: String?

        public enum CodingKeys: String, CodingKey {
            case packagingMaterialCount = "packaging_material_count"

            case locationType = "location_type"

            case fulfillmentChannel = "fulfillment_channel"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeEmail = "store_email"

            case address2

            case mallArea = "mall_area"

            case sId = "s_id"

            case city

            case phone

            case longitude

            case pincode

            case loginUsername = "login_username"

            case isActive = "is_active"

            case meta

            case isArchived = "is_archived"

            case country

            case companyId = "company_id"

            case vatNo = "vat_no"

            case parentStoreId = "parent_store_id"

            case name

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"

            case state

            case createdAt = "created_at"

            case brandId = "brand_id"

            case storeAddressJson = "store_address_json"

            case latitude

            case code

            case brandStoreTags = "brand_store_tags"

            case address1

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case alohomoraUserId = "alohomora_user_id"

            case storeActiveFrom = "store_active_from"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.packagingMaterialCount = packagingMaterialCount

            self.locationType = locationType

            self.fulfillmentChannel = fulfillmentChannel

            self.isEnabledForRecon = isEnabledForRecon

            self.storeEmail = storeEmail

            self.address2 = address2

            self.mallArea = mallArea

            self.sId = sId

            self.city = city

            self.phone = phone

            self.longitude = longitude

            self.pincode = pincode

            self.loginUsername = loginUsername

            self.isActive = isActive

            self.meta = meta

            self.isArchived = isArchived

            self.country = country

            self.companyId = companyId

            self.vatNo = vatNo

            self.parentStoreId = parentStoreId

            self.name = name

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson

            self.state = state

            self.createdAt = createdAt

            self.brandId = brandId

            self.storeAddressJson = storeAddressJson

            self.latitude = latitude

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.address1 = address1

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.alohomoraUserId = alohomoraUserId

            self.storeActiveFrom = storeActiveFrom
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            sId = try container.decode(String.self, forKey: .sId)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(String.self, forKey: .pincode)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)
        }
    }
}
