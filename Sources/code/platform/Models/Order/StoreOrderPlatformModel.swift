

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var storeActiveFrom: String?

        public var createdAt: String

        public var sId: String

        public var orderIntegrationId: String?

        public var loginUsername: String

        public var updatedAt: String?

        public var meta: StoreMeta

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var code: String?

        public var pincode: String

        public var isArchived: Bool?

        public var parentStoreId: Int?

        public var country: String

        public var companyId: Int

        public var fulfillmentChannel: String

        public var latitude: Double

        public var mallArea: String?

        public var isActive: Bool?

        public var storeEmail: String

        public var longitude: Double

        public var packagingMaterialCount: Int?

        public var storeAddressJson: StoreAddress?

        public var mallName: String?

        public var name: String

        public var city: String

        public var contactPerson: String

        public var locationType: String

        public var address1: String

        public var brandId: [String: Any]?

        public var state: String

        public var phone: Int

        public var brandStoreTags: [String]?

        public var address2: String?

        public var isEnabledForRecon: Bool?

        public enum CodingKeys: String, CodingKey {
            case storeActiveFrom = "store_active_from"

            case createdAt = "created_at"

            case sId = "s_id"

            case orderIntegrationId = "order_integration_id"

            case loginUsername = "login_username"

            case updatedAt = "updated_at"

            case meta

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case code

            case pincode

            case isArchived = "is_archived"

            case parentStoreId = "parent_store_id"

            case country

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case latitude

            case mallArea = "mall_area"

            case isActive = "is_active"

            case storeEmail = "store_email"

            case longitude

            case packagingMaterialCount = "packaging_material_count"

            case storeAddressJson = "store_address_json"

            case mallName = "mall_name"

            case name

            case city

            case contactPerson = "contact_person"

            case locationType = "location_type"

            case address1

            case brandId = "brand_id"

            case state

            case phone

            case brandStoreTags = "brand_store_tags"

            case address2

            case isEnabledForRecon = "is_enabled_for_recon"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.storeActiveFrom = storeActiveFrom

            self.createdAt = createdAt

            self.sId = sId

            self.orderIntegrationId = orderIntegrationId

            self.loginUsername = loginUsername

            self.updatedAt = updatedAt

            self.meta = meta

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.code = code

            self.pincode = pincode

            self.isArchived = isArchived

            self.parentStoreId = parentStoreId

            self.country = country

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.latitude = latitude

            self.mallArea = mallArea

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.longitude = longitude

            self.packagingMaterialCount = packagingMaterialCount

            self.storeAddressJson = storeAddressJson

            self.mallName = mallName

            self.name = name

            self.city = city

            self.contactPerson = contactPerson

            self.locationType = locationType

            self.address1 = address1

            self.brandId = brandId

            self.state = state

            self.phone = phone

            self.brandStoreTags = brandStoreTags

            self.address2 = address2

            self.isEnabledForRecon = isEnabledForRecon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            country = try container.decode(String.self, forKey: .country)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            locationType = try container.decode(String.self, forKey: .locationType)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var storeActiveFrom: String?

        public var createdAt: String

        public var sId: String

        public var orderIntegrationId: String?

        public var loginUsername: String

        public var updatedAt: String?

        public var meta: StoreMeta

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var code: String?

        public var pincode: String

        public var isArchived: Bool?

        public var parentStoreId: Int?

        public var country: String

        public var companyId: Int

        public var fulfillmentChannel: String

        public var latitude: Double

        public var mallArea: String?

        public var isActive: Bool?

        public var storeEmail: String

        public var longitude: Double

        public var packagingMaterialCount: Int?

        public var storeAddressJson: StoreAddress?

        public var mallName: String?

        public var name: String

        public var city: String

        public var contactPerson: String

        public var locationType: String

        public var address1: String

        public var brandId: [String: Any]?

        public var state: String

        public var phone: Int

        public var brandStoreTags: [String]?

        public var address2: String?

        public var isEnabledForRecon: Bool?

        public enum CodingKeys: String, CodingKey {
            case storeActiveFrom = "store_active_from"

            case createdAt = "created_at"

            case sId = "s_id"

            case orderIntegrationId = "order_integration_id"

            case loginUsername = "login_username"

            case updatedAt = "updated_at"

            case meta

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case code

            case pincode

            case isArchived = "is_archived"

            case parentStoreId = "parent_store_id"

            case country

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case latitude

            case mallArea = "mall_area"

            case isActive = "is_active"

            case storeEmail = "store_email"

            case longitude

            case packagingMaterialCount = "packaging_material_count"

            case storeAddressJson = "store_address_json"

            case mallName = "mall_name"

            case name

            case city

            case contactPerson = "contact_person"

            case locationType = "location_type"

            case address1

            case brandId = "brand_id"

            case state

            case phone

            case brandStoreTags = "brand_store_tags"

            case address2

            case isEnabledForRecon = "is_enabled_for_recon"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.storeActiveFrom = storeActiveFrom

            self.createdAt = createdAt

            self.sId = sId

            self.orderIntegrationId = orderIntegrationId

            self.loginUsername = loginUsername

            self.updatedAt = updatedAt

            self.meta = meta

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.code = code

            self.pincode = pincode

            self.isArchived = isArchived

            self.parentStoreId = parentStoreId

            self.country = country

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.latitude = latitude

            self.mallArea = mallArea

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.longitude = longitude

            self.packagingMaterialCount = packagingMaterialCount

            self.storeAddressJson = storeAddressJson

            self.mallName = mallName

            self.name = name

            self.city = city

            self.contactPerson = contactPerson

            self.locationType = locationType

            self.address1 = address1

            self.brandId = brandId

            self.state = state

            self.phone = phone

            self.brandStoreTags = brandStoreTags

            self.address2 = address2

            self.isEnabledForRecon = isEnabledForRecon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            country = try container.decode(String.self, forKey: .country)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            locationType = try container.decode(String.self, forKey: .locationType)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
        }
    }
}
