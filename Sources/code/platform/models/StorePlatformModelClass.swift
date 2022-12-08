

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var name: String

        public var isEnabledForRecon: Bool?

        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var alohomoraUserId: Int?

        public var latitude: Double

        public var phone: Int

        public var sId: String

        public var brandStoreTags: [String]?

        public var longitude: Double

        public var pincode: String

        public var state: String

        public var city: String

        public var mallArea: String?

        public var storeEmail: String

        public var meta: StoreMeta

        public var address2: String?

        public var locationType: String

        public var parentStoreId: Int?

        public var address1: String

        public var companyId: Int

        public var fulfillmentChannel: String

        public var isArchived: Bool?

        public var loginUsername: String

        public var mallName: String?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var code: String?

        public var packagingMaterialCount: Int?

        public var vatNo: String?

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var contactPerson: String

        public var brandId: [String: Any]?

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case alohomoraUserId = "alohomora_user_id"

            case latitude

            case phone

            case sId = "s_id"

            case brandStoreTags = "brand_store_tags"

            case longitude

            case pincode

            case state

            case city

            case mallArea = "mall_area"

            case storeEmail = "store_email"

            case meta

            case address2

            case locationType = "location_type"

            case parentStoreId = "parent_store_id"

            case address1

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case isArchived = "is_archived"

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case code

            case packagingMaterialCount = "packaging_material_count"

            case vatNo = "vat_no"

            case storeAddressJson = "store_address_json"

            case country

            case contactPerson = "contact_person"

            case brandId = "brand_id"

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.alohomoraUserId = alohomoraUserId

            self.latitude = latitude

            self.phone = phone

            self.sId = sId

            self.brandStoreTags = brandStoreTags

            self.longitude = longitude

            self.pincode = pincode

            self.state = state

            self.city = city

            self.mallArea = mallArea

            self.storeEmail = storeEmail

            self.meta = meta

            self.address2 = address2

            self.locationType = locationType

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.isArchived = isArchived

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.code = code

            self.packagingMaterialCount = packagingMaterialCount

            self.vatNo = vatNo

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.contactPerson = contactPerson

            self.brandId = brandId

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(Int.self, forKey: .phone)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
