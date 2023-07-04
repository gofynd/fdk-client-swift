

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address1: String

        public var mallName: String?

        public var isEnabledForRecon: Bool?

        public var code: String?

        public var loginUsername: String

        public var country: String

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public var address2: String?

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var contactPerson: String

        public var latitude: Double

        public var isArchived: Bool?

        public var updatedAt: String?

        public var alohomoraUserId: Int?

        public var parentStoreId: Int?

        public var storeActiveFrom: String?

        public var brandId: [String: Any]?

        public var isActive: Bool?

        public var pincode: String

        public var fulfillmentChannel: String

        public var longitude: Double

        public var sId: String

        public var meta: StoreMeta

        public var companyId: Int

        public var locationType: String

        public var mallArea: String?

        public var state: String

        public var orderIntegrationId: String?

        public var vatNo: String?

        public var name: String

        public var storeEmail: String

        public var city: String

        public var brandStoreTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case address1

            case mallName = "mall_name"

            case isEnabledForRecon = "is_enabled_for_recon"

            case code

            case loginUsername = "login_username"

            case country

            case phone

            case storeAddressJson = "store_address_json"

            case address2

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case contactPerson = "contact_person"

            case latitude

            case isArchived = "is_archived"

            case updatedAt = "updated_at"

            case alohomoraUserId = "alohomora_user_id"

            case parentStoreId = "parent_store_id"

            case storeActiveFrom = "store_active_from"

            case brandId = "brand_id"

            case isActive = "is_active"

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case sId = "s_id"

            case meta

            case companyId = "company_id"

            case locationType = "location_type"

            case mallArea = "mall_area"

            case state

            case orderIntegrationId = "order_integration_id"

            case vatNo = "vat_no"

            case name

            case storeEmail = "store_email"

            case city

            case brandStoreTags = "brand_store_tags"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address1 = address1

            self.mallName = mallName

            self.isEnabledForRecon = isEnabledForRecon

            self.code = code

            self.loginUsername = loginUsername

            self.country = country

            self.phone = phone

            self.storeAddressJson = storeAddressJson

            self.address2 = address2

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.isArchived = isArchived

            self.updatedAt = updatedAt

            self.alohomoraUserId = alohomoraUserId

            self.parentStoreId = parentStoreId

            self.storeActiveFrom = storeActiveFrom

            self.brandId = brandId

            self.isActive = isActive

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.sId = sId

            self.meta = meta

            self.companyId = companyId

            self.locationType = locationType

            self.mallArea = mallArea

            self.state = state

            self.orderIntegrationId = orderIntegrationId

            self.vatNo = vatNo

            self.name = name

            self.storeEmail = storeEmail

            self.city = city

            self.brandStoreTags = brandStoreTags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address1: String

        public var mallName: String?

        public var isEnabledForRecon: Bool?

        public var code: String?

        public var loginUsername: String

        public var country: String

        public var phone: Int

        public var storeAddressJson: StoreAddress?

        public var address2: String?

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var contactPerson: String

        public var latitude: Double

        public var isArchived: Bool?

        public var updatedAt: String?

        public var alohomoraUserId: Int?

        public var parentStoreId: Int?

        public var storeActiveFrom: String?

        public var brandId: [String: Any]?

        public var isActive: Bool?

        public var pincode: String

        public var fulfillmentChannel: String

        public var longitude: Double

        public var sId: String

        public var meta: StoreMeta

        public var companyId: Int

        public var locationType: String

        public var mallArea: String?

        public var state: String

        public var orderIntegrationId: String?

        public var vatNo: String?

        public var name: String

        public var storeEmail: String

        public var city: String

        public var brandStoreTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case address1

            case mallName = "mall_name"

            case isEnabledForRecon = "is_enabled_for_recon"

            case code

            case loginUsername = "login_username"

            case country

            case phone

            case storeAddressJson = "store_address_json"

            case address2

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case contactPerson = "contact_person"

            case latitude

            case isArchived = "is_archived"

            case updatedAt = "updated_at"

            case alohomoraUserId = "alohomora_user_id"

            case parentStoreId = "parent_store_id"

            case storeActiveFrom = "store_active_from"

            case brandId = "brand_id"

            case isActive = "is_active"

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case sId = "s_id"

            case meta

            case companyId = "company_id"

            case locationType = "location_type"

            case mallArea = "mall_area"

            case state

            case orderIntegrationId = "order_integration_id"

            case vatNo = "vat_no"

            case name

            case storeEmail = "store_email"

            case city

            case brandStoreTags = "brand_store_tags"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address1 = address1

            self.mallName = mallName

            self.isEnabledForRecon = isEnabledForRecon

            self.code = code

            self.loginUsername = loginUsername

            self.country = country

            self.phone = phone

            self.storeAddressJson = storeAddressJson

            self.address2 = address2

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.isArchived = isArchived

            self.updatedAt = updatedAt

            self.alohomoraUserId = alohomoraUserId

            self.parentStoreId = parentStoreId

            self.storeActiveFrom = storeActiveFrom

            self.brandId = brandId

            self.isActive = isActive

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.sId = sId

            self.meta = meta

            self.companyId = companyId

            self.locationType = locationType

            self.mallArea = mallArea

            self.state = state

            self.orderIntegrationId = orderIntegrationId

            self.vatNo = vatNo

            self.name = name

            self.storeEmail = storeEmail

            self.city = city

            self.brandStoreTags = brandStoreTags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
        }
    }
}
