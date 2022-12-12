

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandStoreTags: [String]?

        public var mallArea: String?

        public var vatNo: String?

        public var fulfillmentChannel: String

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var address1: String

        public var country: String

        public var locationType: String

        public var orderIntegrationId: String?

        public var parentStoreId: Int?

        public var updatedAt: String?

        public var phone: Int

        public var isArchived: Bool?

        public var isEnabledForRecon: Bool?

        public var mallName: String?

        public var storeActiveFrom: String?

        public var pincode: String

        public var name: String

        public var longitude: Double

        public var companyId: Int

        public var brandId: [String: Any]?

        public var alohomoraUserId: Int?

        public var address2: String?

        public var isActive: Bool?

        public var state: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var city: String

        public var storeEmail: String

        public var loginUsername: String

        public var code: String?

        public var latitude: Double

        public var contactPerson: String

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case brandStoreTags = "brand_store_tags"

            case mallArea = "mall_area"

            case vatNo = "vat_no"

            case fulfillmentChannel = "fulfillment_channel"

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case address1

            case country

            case locationType = "location_type"

            case orderIntegrationId = "order_integration_id"

            case parentStoreId = "parent_store_id"

            case updatedAt = "updated_at"

            case phone

            case isArchived = "is_archived"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallName = "mall_name"

            case storeActiveFrom = "store_active_from"

            case pincode

            case name

            case longitude

            case companyId = "company_id"

            case brandId = "brand_id"

            case alohomoraUserId = "alohomora_user_id"

            case address2

            case isActive = "is_active"

            case state

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case city

            case storeEmail = "store_email"

            case loginUsername = "login_username"

            case code

            case latitude

            case contactPerson = "contact_person"

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandStoreTags = brandStoreTags

            self.mallArea = mallArea

            self.vatNo = vatNo

            self.fulfillmentChannel = fulfillmentChannel

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.address1 = address1

            self.country = country

            self.locationType = locationType

            self.orderIntegrationId = orderIntegrationId

            self.parentStoreId = parentStoreId

            self.updatedAt = updatedAt

            self.phone = phone

            self.isArchived = isArchived

            self.isEnabledForRecon = isEnabledForRecon

            self.mallName = mallName

            self.storeActiveFrom = storeActiveFrom

            self.pincode = pincode

            self.name = name

            self.longitude = longitude

            self.companyId = companyId

            self.brandId = brandId

            self.alohomoraUserId = alohomoraUserId

            self.address2 = address2

            self.isActive = isActive

            self.state = state

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.city = city

            self.storeEmail = storeEmail

            self.loginUsername = loginUsername

            self.code = code

            self.latitude = latitude

            self.contactPerson = contactPerson

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            address1 = try container.decode(String.self, forKey: .address1)

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            name = try container.decode(String.self, forKey: .name)

            longitude = try container.decode(Double.self, forKey: .longitude)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                address2 = try container.decode(String.self, forKey: .address2)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
