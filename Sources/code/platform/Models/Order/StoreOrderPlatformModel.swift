

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isActive: Bool?

        public var city: String

        public var longitude: Double

        public var sId: String

        public var pincode: String

        public var packagingMaterialCount: Int?

        public var phone: Int

        public var state: String

        public var storeEmail: String

        public var companyId: Int

        public var orderIntegrationId: String?

        public var mallArea: String?

        public var mallName: String?

        public var alohomoraUserId: Int?

        public var brandStoreTags: [String]?

        public var contactPerson: String

        public var isArchived: Bool?

        public var createdAt: String

        public var name: String

        public var isEnabledForRecon: Bool?

        public var loginUsername: String

        public var storeAddressJson: StoreAddress?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var code: String?

        public var vatNo: String?

        public var country: String

        public var address1: String

        public var locationType: String

        public var address2: String?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var latitude: Double

        public var parentStoreId: Int?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case city

            case longitude

            case sId = "s_id"

            case pincode

            case packagingMaterialCount = "packaging_material_count"

            case phone

            case state

            case storeEmail = "store_email"

            case companyId = "company_id"

            case orderIntegrationId = "order_integration_id"

            case mallArea = "mall_area"

            case mallName = "mall_name"

            case alohomoraUserId = "alohomora_user_id"

            case brandStoreTags = "brand_store_tags"

            case contactPerson = "contact_person"

            case isArchived = "is_archived"

            case createdAt = "created_at"

            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case loginUsername = "login_username"

            case storeAddressJson = "store_address_json"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case meta

            case code

            case vatNo = "vat_no"

            case country

            case address1

            case locationType = "location_type"

            case address2

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case latitude

            case parentStoreId = "parent_store_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isActive = isActive

            self.city = city

            self.longitude = longitude

            self.sId = sId

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount

            self.phone = phone

            self.state = state

            self.storeEmail = storeEmail

            self.companyId = companyId

            self.orderIntegrationId = orderIntegrationId

            self.mallArea = mallArea

            self.mallName = mallName

            self.alohomoraUserId = alohomoraUserId

            self.brandStoreTags = brandStoreTags

            self.contactPerson = contactPerson

            self.isArchived = isArchived

            self.createdAt = createdAt

            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.loginUsername = loginUsername

            self.storeAddressJson = storeAddressJson

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.code = code

            self.vatNo = vatNo

            self.country = country

            self.address1 = address1

            self.locationType = locationType

            self.address2 = address2

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.latitude = latitude

            self.parentStoreId = parentStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isActive: Bool?

        public var city: String

        public var longitude: Double

        public var sId: String

        public var pincode: String

        public var packagingMaterialCount: Int?

        public var phone: Int

        public var state: String

        public var storeEmail: String

        public var companyId: Int

        public var orderIntegrationId: String?

        public var mallArea: String?

        public var mallName: String?

        public var alohomoraUserId: Int?

        public var brandStoreTags: [String]?

        public var contactPerson: String

        public var isArchived: Bool?

        public var createdAt: String

        public var name: String

        public var isEnabledForRecon: Bool?

        public var loginUsername: String

        public var storeAddressJson: StoreAddress?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var code: String?

        public var vatNo: String?

        public var country: String

        public var address1: String

        public var locationType: String

        public var address2: String?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var latitude: Double

        public var parentStoreId: Int?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case city

            case longitude

            case sId = "s_id"

            case pincode

            case packagingMaterialCount = "packaging_material_count"

            case phone

            case state

            case storeEmail = "store_email"

            case companyId = "company_id"

            case orderIntegrationId = "order_integration_id"

            case mallArea = "mall_area"

            case mallName = "mall_name"

            case alohomoraUserId = "alohomora_user_id"

            case brandStoreTags = "brand_store_tags"

            case contactPerson = "contact_person"

            case isArchived = "is_archived"

            case createdAt = "created_at"

            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case loginUsername = "login_username"

            case storeAddressJson = "store_address_json"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case meta

            case code

            case vatNo = "vat_no"

            case country

            case address1

            case locationType = "location_type"

            case address2

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case latitude

            case parentStoreId = "parent_store_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isActive = isActive

            self.city = city

            self.longitude = longitude

            self.sId = sId

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount

            self.phone = phone

            self.state = state

            self.storeEmail = storeEmail

            self.companyId = companyId

            self.orderIntegrationId = orderIntegrationId

            self.mallArea = mallArea

            self.mallName = mallName

            self.alohomoraUserId = alohomoraUserId

            self.brandStoreTags = brandStoreTags

            self.contactPerson = contactPerson

            self.isArchived = isArchived

            self.createdAt = createdAt

            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.loginUsername = loginUsername

            self.storeAddressJson = storeAddressJson

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.code = code

            self.vatNo = vatNo

            self.country = country

            self.address1 = address1

            self.locationType = locationType

            self.address2 = address2

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.latitude = latitude

            self.parentStoreId = parentStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)
        }
    }
}
