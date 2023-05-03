

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var companyId: Int

        public var country: String

        public var brandId: [String: Any]?

        public var storeEmail: String

        public var address1: String

        public var state: String

        public var address2: String?

        public var locationType: String

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var mallArea: String?

        public var storeActiveFrom: String?

        public var isEnabledForRecon: Bool?

        public var parentStoreId: Int?

        public var sId: String

        public var meta: StoreMeta

        public var pincode: String

        public var mallName: String?

        public var code: String?

        public var isActive: Bool?

        public var vatNo: String?

        public var updatedAt: String?

        public var contactPerson: String

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var isArchived: Bool?

        public var loginUsername: String

        public var latitude: Double

        public var name: String

        public var fulfillmentChannel: String

        public var city: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case country

            case brandId = "brand_id"

            case storeEmail = "store_email"

            case address1

            case state

            case address2

            case locationType = "location_type"

            case phone

            case storeAddressJson = "store_address_json"

            case longitude

            case mallArea = "mall_area"

            case storeActiveFrom = "store_active_from"

            case isEnabledForRecon = "is_enabled_for_recon"

            case parentStoreId = "parent_store_id"

            case sId = "s_id"

            case meta

            case pincode

            case mallName = "mall_name"

            case code

            case isActive = "is_active"

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case isArchived = "is_archived"

            case loginUsername = "login_username"

            case latitude

            case name

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.country = country

            self.brandId = brandId

            self.storeEmail = storeEmail

            self.address1 = address1

            self.state = state

            self.address2 = address2

            self.locationType = locationType

            self.phone = phone

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.mallArea = mallArea

            self.storeActiveFrom = storeActiveFrom

            self.isEnabledForRecon = isEnabledForRecon

            self.parentStoreId = parentStoreId

            self.sId = sId

            self.meta = meta

            self.pincode = pincode

            self.mallName = mallName

            self.code = code

            self.isActive = isActive

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.isArchived = isArchived

            self.loginUsername = loginUsername

            self.latitude = latitude

            self.name = name

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            country = try container.decode(String.self, forKey: .country)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            sId = try container.decode(String.self, forKey: .sId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

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
        public var companyId: Int

        public var country: String

        public var brandId: [String: Any]?

        public var storeEmail: String

        public var address1: String

        public var state: String

        public var address2: String?

        public var locationType: String

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var mallArea: String?

        public var storeActiveFrom: String?

        public var isEnabledForRecon: Bool?

        public var parentStoreId: Int?

        public var sId: String

        public var meta: StoreMeta

        public var pincode: String

        public var mallName: String?

        public var code: String?

        public var isActive: Bool?

        public var vatNo: String?

        public var updatedAt: String?

        public var contactPerson: String

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var isArchived: Bool?

        public var loginUsername: String

        public var latitude: Double

        public var name: String

        public var fulfillmentChannel: String

        public var city: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case country

            case brandId = "brand_id"

            case storeEmail = "store_email"

            case address1

            case state

            case address2

            case locationType = "location_type"

            case phone

            case storeAddressJson = "store_address_json"

            case longitude

            case mallArea = "mall_area"

            case storeActiveFrom = "store_active_from"

            case isEnabledForRecon = "is_enabled_for_recon"

            case parentStoreId = "parent_store_id"

            case sId = "s_id"

            case meta

            case pincode

            case mallName = "mall_name"

            case code

            case isActive = "is_active"

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case isArchived = "is_archived"

            case loginUsername = "login_username"

            case latitude

            case name

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.country = country

            self.brandId = brandId

            self.storeEmail = storeEmail

            self.address1 = address1

            self.state = state

            self.address2 = address2

            self.locationType = locationType

            self.phone = phone

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.mallArea = mallArea

            self.storeActiveFrom = storeActiveFrom

            self.isEnabledForRecon = isEnabledForRecon

            self.parentStoreId = parentStoreId

            self.sId = sId

            self.meta = meta

            self.pincode = pincode

            self.mallName = mallName

            self.code = code

            self.isActive = isActive

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.isArchived = isArchived

            self.loginUsername = loginUsername

            self.latitude = latitude

            self.name = name

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            country = try container.decode(String.self, forKey: .country)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            sId = try container.decode(String.self, forKey: .sId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
        }
    }
}
