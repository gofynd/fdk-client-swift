

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallName: String?

        public var country: String

        public var isArchived: Bool?

        public var locationType: String

        public var updatedAt: String?

        public var longitude: Double

        public var storeAddressJson: StoreAddress?

        public var createdAt: String

        public var address2: String?

        public var code: String?

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var latitude: Double

        public var phone: Int

        public var alohomoraUserId: Int?

        public var mallArea: String?

        public var companyId: Int

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var fulfillmentChannel: String

        public var state: String

        public var address1: String

        public var isActive: Bool?

        public var loginUsername: String

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var sId: String

        public var brandStoreTags: [String]?

        public var name: String

        public var vatNo: String?

        public var contactPerson: String

        public var brandId: [String: Any]?

        public var pincode: String

        public var city: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case mallName = "mall_name"

            case country

            case isArchived = "is_archived"

            case locationType = "location_type"

            case updatedAt = "updated_at"

            case longitude

            case storeAddressJson = "store_address_json"

            case createdAt = "created_at"

            case address2

            case code

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case latitude

            case phone

            case alohomoraUserId = "alohomora_user_id"

            case mallArea = "mall_area"

            case companyId = "company_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case address1

            case isActive = "is_active"

            case loginUsername = "login_username"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case sId = "s_id"

            case brandStoreTags = "brand_store_tags"

            case name

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case brandId = "brand_id"

            case pincode

            case city

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallName = mallName

            self.country = country

            self.isArchived = isArchived

            self.locationType = locationType

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.storeAddressJson = storeAddressJson

            self.createdAt = createdAt

            self.address2 = address2

            self.code = code

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.phone = phone

            self.alohomoraUserId = alohomoraUserId

            self.mallArea = mallArea

            self.companyId = companyId

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.address1 = address1

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.sId = sId

            self.brandStoreTags = brandStoreTags

            self.name = name

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.brandId = brandId

            self.pincode = pincode

            self.city = city

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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

            sId = try container.decode(String.self, forKey: .sId)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

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

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

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
        public var mallName: String?

        public var country: String

        public var isArchived: Bool?

        public var locationType: String

        public var updatedAt: String?

        public var longitude: Double

        public var storeAddressJson: StoreAddress?

        public var createdAt: String

        public var address2: String?

        public var code: String?

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var latitude: Double

        public var phone: Int

        public var alohomoraUserId: Int?

        public var mallArea: String?

        public var companyId: Int

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var fulfillmentChannel: String

        public var state: String

        public var address1: String

        public var isActive: Bool?

        public var loginUsername: String

        public var packagingMaterialCount: Int?

        public var parentStoreId: Int?

        public var sId: String

        public var brandStoreTags: [String]?

        public var name: String

        public var vatNo: String?

        public var contactPerson: String

        public var brandId: [String: Any]?

        public var pincode: String

        public var city: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case mallName = "mall_name"

            case country

            case isArchived = "is_archived"

            case locationType = "location_type"

            case updatedAt = "updated_at"

            case longitude

            case storeAddressJson = "store_address_json"

            case createdAt = "created_at"

            case address2

            case code

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case latitude

            case phone

            case alohomoraUserId = "alohomora_user_id"

            case mallArea = "mall_area"

            case companyId = "company_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case address1

            case isActive = "is_active"

            case loginUsername = "login_username"

            case packagingMaterialCount = "packaging_material_count"

            case parentStoreId = "parent_store_id"

            case sId = "s_id"

            case brandStoreTags = "brand_store_tags"

            case name

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case brandId = "brand_id"

            case pincode

            case city

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallName = mallName

            self.country = country

            self.isArchived = isArchived

            self.locationType = locationType

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.storeAddressJson = storeAddressJson

            self.createdAt = createdAt

            self.address2 = address2

            self.code = code

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.phone = phone

            self.alohomoraUserId = alohomoraUserId

            self.mallArea = mallArea

            self.companyId = companyId

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.address1 = address1

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.packagingMaterialCount = packagingMaterialCount

            self.parentStoreId = parentStoreId

            self.sId = sId

            self.brandStoreTags = brandStoreTags

            self.name = name

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.brandId = brandId

            self.pincode = pincode

            self.city = city

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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

            sId = try container.decode(String.self, forKey: .sId)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

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

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
        }
    }
}
