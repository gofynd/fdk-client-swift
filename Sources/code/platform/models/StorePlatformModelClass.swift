

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var createdAt: String

        public var address2: String?

        public var storeEmail: String

        public var parentStoreId: Int?

        public var fulfillmentChannel: String

        public var locationType: String

        public var state: String

        public var isEnabledForRecon: Bool?

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var country: String

        public var city: String

        public var vatNo: String?

        public var name: String

        public var mallArea: String?

        public var isArchived: Bool?

        public var phone: Int

        public var address1: String

        public var meta: StoreMeta

        public var isActive: Bool?

        public var pincode: String

        public var code: String?

        public var alohomoraUserId: Int?

        public var loginUsername: String

        public var mallName: String?

        public var storeActiveFrom: String?

        public var packagingMaterialCount: Int?

        public var brandStoreTags: [String]?

        public var brandId: [String: Any]?

        public var sId: String

        public var latitude: Double

        public var orderIntegrationId: String?

        public var contactPerson: String

        public var companyId: Int

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case address2

            case storeEmail = "store_email"

            case parentStoreId = "parent_store_id"

            case fulfillmentChannel = "fulfillment_channel"

            case locationType = "location_type"

            case state

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeAddressJson = "store_address_json"

            case longitude

            case country

            case city

            case vatNo = "vat_no"

            case name

            case mallArea = "mall_area"

            case isArchived = "is_archived"

            case phone

            case address1

            case meta

            case isActive = "is_active"

            case pincode

            case code

            case alohomoraUserId = "alohomora_user_id"

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case storeActiveFrom = "store_active_from"

            case packagingMaterialCount = "packaging_material_count"

            case brandStoreTags = "brand_store_tags"

            case brandId = "brand_id"

            case sId = "s_id"

            case latitude

            case orderIntegrationId = "order_integration_id"

            case contactPerson = "contact_person"

            case companyId = "company_id"

            case updatedAt = "updated_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.createdAt = createdAt

            self.address2 = address2

            self.storeEmail = storeEmail

            self.parentStoreId = parentStoreId

            self.fulfillmentChannel = fulfillmentChannel

            self.locationType = locationType

            self.state = state

            self.isEnabledForRecon = isEnabledForRecon

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.country = country

            self.city = city

            self.vatNo = vatNo

            self.name = name

            self.mallArea = mallArea

            self.isArchived = isArchived

            self.phone = phone

            self.address1 = address1

            self.meta = meta

            self.isActive = isActive

            self.pincode = pincode

            self.code = code

            self.alohomoraUserId = alohomoraUserId

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.storeActiveFrom = storeActiveFrom

            self.packagingMaterialCount = packagingMaterialCount

            self.brandStoreTags = brandStoreTags

            self.brandId = brandId

            self.sId = sId

            self.latitude = latitude

            self.orderIntegrationId = orderIntegrationId

            self.contactPerson = contactPerson

            self.companyId = companyId

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            phone = try container.decode(Int.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(updatedAt, forKey: .updatedAt)
        }
    }
}
