

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isEnabledForRecon: Bool?

        public var vatNo: String?

        public var pincode: String

        public var storeActiveFrom: String?

        public var brandStoreTags: [String]?

        public var mallArea: String?

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var parentStoreId: Int?

        public var isActive: Bool?

        public var address1: String

        public var contactPerson: String

        public var createdAt: String

        public var meta: StoreMeta

        public var orderIntegrationId: String?

        public var city: String

        public var mallName: String?

        public var updatedAt: String?

        public var state: String

        public var storeEmail: String

        public var isArchived: Bool?

        public var address2: String?

        public var companyId: Int

        public var sId: String

        public var country: String

        public var phone: Int

        public var brandId: [String: Any]?

        public var latitude: Double

        public var packagingMaterialCount: Int?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var loginUsername: String

        public var code: String?

        public var name: String

        public var alohomoraUserId: Int?

        public enum CodingKeys: String, CodingKey {
            case isEnabledForRecon = "is_enabled_for_recon"

            case vatNo = "vat_no"

            case pincode

            case storeActiveFrom = "store_active_from"

            case brandStoreTags = "brand_store_tags"

            case mallArea = "mall_area"

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case parentStoreId = "parent_store_id"

            case isActive = "is_active"

            case address1

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case meta

            case orderIntegrationId = "order_integration_id"

            case city

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case state

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case address2

            case companyId = "company_id"

            case sId = "s_id"

            case country

            case phone

            case brandId = "brand_id"

            case latitude

            case packagingMaterialCount = "packaging_material_count"

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case loginUsername = "login_username"

            case code

            case name

            case alohomoraUserId = "alohomora_user_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isEnabledForRecon = isEnabledForRecon

            self.vatNo = vatNo

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.brandStoreTags = brandStoreTags

            self.mallArea = mallArea

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.parentStoreId = parentStoreId

            self.isActive = isActive

            self.address1 = address1

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.meta = meta

            self.orderIntegrationId = orderIntegrationId

            self.city = city

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.state = state

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.address2 = address2

            self.companyId = companyId

            self.sId = sId

            self.country = country

            self.phone = phone

            self.brandId = brandId

            self.latitude = latitude

            self.packagingMaterialCount = packagingMaterialCount

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.loginUsername = loginUsername

            self.code = code

            self.name = name

            self.alohomoraUserId = alohomoraUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

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

            state = try container.decode(String.self, forKey: .state)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

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
        public var isEnabledForRecon: Bool?

        public var vatNo: String?

        public var pincode: String

        public var storeActiveFrom: String?

        public var brandStoreTags: [String]?

        public var mallArea: String?

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var parentStoreId: Int?

        public var isActive: Bool?

        public var address1: String

        public var contactPerson: String

        public var createdAt: String

        public var meta: StoreMeta

        public var orderIntegrationId: String?

        public var city: String

        public var mallName: String?

        public var updatedAt: String?

        public var state: String

        public var storeEmail: String

        public var isArchived: Bool?

        public var address2: String?

        public var companyId: Int

        public var sId: String

        public var country: String

        public var phone: Int

        public var brandId: [String: Any]?

        public var latitude: Double

        public var packagingMaterialCount: Int?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var loginUsername: String

        public var code: String?

        public var name: String

        public var alohomoraUserId: Int?

        public enum CodingKeys: String, CodingKey {
            case isEnabledForRecon = "is_enabled_for_recon"

            case vatNo = "vat_no"

            case pincode

            case storeActiveFrom = "store_active_from"

            case brandStoreTags = "brand_store_tags"

            case mallArea = "mall_area"

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case parentStoreId = "parent_store_id"

            case isActive = "is_active"

            case address1

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case meta

            case orderIntegrationId = "order_integration_id"

            case city

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case state

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case address2

            case companyId = "company_id"

            case sId = "s_id"

            case country

            case phone

            case brandId = "brand_id"

            case latitude

            case packagingMaterialCount = "packaging_material_count"

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case loginUsername = "login_username"

            case code

            case name

            case alohomoraUserId = "alohomora_user_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isEnabledForRecon = isEnabledForRecon

            self.vatNo = vatNo

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.brandStoreTags = brandStoreTags

            self.mallArea = mallArea

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.parentStoreId = parentStoreId

            self.isActive = isActive

            self.address1 = address1

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.meta = meta

            self.orderIntegrationId = orderIntegrationId

            self.city = city

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.state = state

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.address2 = address2

            self.companyId = companyId

            self.sId = sId

            self.country = country

            self.phone = phone

            self.brandId = brandId

            self.latitude = latitude

            self.packagingMaterialCount = packagingMaterialCount

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.loginUsername = loginUsername

            self.code = code

            self.name = name

            self.alohomoraUserId = alohomoraUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

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

            state = try container.decode(String.self, forKey: .state)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
        }
    }
}
