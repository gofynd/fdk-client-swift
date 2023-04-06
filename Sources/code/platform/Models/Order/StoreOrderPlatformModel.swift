

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var companyId: Int

        public var mallName: String?

        public var createdAt: String

        public var isArchived: Bool?

        public var address2: String?

        public var code: String?

        public var parentStoreId: Int?

        public var storeEmail: String

        public var longitude: Double

        public var address1: String

        public var pincode: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var phone: Int

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var loginUsername: String

        public var contactPerson: String

        public var sId: String

        public var name: String

        public var vatNo: String?

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var country: String

        public var packagingMaterialCount: Int?

        public var city: String

        public var locationType: String

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var mallArea: String?

        public var brandId: [String: Any]?

        public var state: String

        public var alohomoraUserId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case mallName = "mall_name"

            case createdAt = "created_at"

            case isArchived = "is_archived"

            case address2

            case code

            case parentStoreId = "parent_store_id"

            case storeEmail = "store_email"

            case longitude

            case address1

            case pincode

            case brandStoreTags = "brand_store_tags"

            case latitude

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case phone

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"

            case contactPerson = "contact_person"

            case sId = "s_id"

            case name

            case vatNo = "vat_no"

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case country

            case packagingMaterialCount = "packaging_material_count"

            case city

            case locationType = "location_type"

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case mallArea = "mall_area"

            case brandId = "brand_id"

            case state

            case alohomoraUserId = "alohomora_user_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.mallName = mallName

            self.createdAt = createdAt

            self.isArchived = isArchived

            self.address2 = address2

            self.code = code

            self.parentStoreId = parentStoreId

            self.storeEmail = storeEmail

            self.longitude = longitude

            self.address1 = address1

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.phone = phone

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername

            self.contactPerson = contactPerson

            self.sId = sId

            self.name = name

            self.vatNo = vatNo

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.country = country

            self.packagingMaterialCount = packagingMaterialCount

            self.city = city

            self.locationType = locationType

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.mallArea = mallArea

            self.brandId = brandId

            self.state = state

            self.alohomoraUserId = alohomoraUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            do {
                code = try container.decode(String.self, forKey: .code)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            phone = try container.decode(Int.self, forKey: .phone)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            sId = try container.decode(String.self, forKey: .sId)

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
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

        public var mallName: String?

        public var createdAt: String

        public var isArchived: Bool?

        public var address2: String?

        public var code: String?

        public var parentStoreId: Int?

        public var storeEmail: String

        public var longitude: Double

        public var address1: String

        public var pincode: String

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var phone: Int

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var loginUsername: String

        public var contactPerson: String

        public var sId: String

        public var name: String

        public var vatNo: String?

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var country: String

        public var packagingMaterialCount: Int?

        public var city: String

        public var locationType: String

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var mallArea: String?

        public var brandId: [String: Any]?

        public var state: String

        public var alohomoraUserId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case mallName = "mall_name"

            case createdAt = "created_at"

            case isArchived = "is_archived"

            case address2

            case code

            case parentStoreId = "parent_store_id"

            case storeEmail = "store_email"

            case longitude

            case address1

            case pincode

            case brandStoreTags = "brand_store_tags"

            case latitude

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case phone

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"

            case contactPerson = "contact_person"

            case sId = "s_id"

            case name

            case vatNo = "vat_no"

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case country

            case packagingMaterialCount = "packaging_material_count"

            case city

            case locationType = "location_type"

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case mallArea = "mall_area"

            case brandId = "brand_id"

            case state

            case alohomoraUserId = "alohomora_user_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.mallName = mallName

            self.createdAt = createdAt

            self.isArchived = isArchived

            self.address2 = address2

            self.code = code

            self.parentStoreId = parentStoreId

            self.storeEmail = storeEmail

            self.longitude = longitude

            self.address1 = address1

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.phone = phone

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername

            self.contactPerson = contactPerson

            self.sId = sId

            self.name = name

            self.vatNo = vatNo

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.country = country

            self.packagingMaterialCount = packagingMaterialCount

            self.city = city

            self.locationType = locationType

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.mallArea = mallArea

            self.brandId = brandId

            self.state = state

            self.alohomoraUserId = alohomoraUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            do {
                code = try container.decode(String.self, forKey: .code)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            phone = try container.decode(Int.self, forKey: .phone)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            sId = try container.decode(String.self, forKey: .sId)

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
        }
    }
}
