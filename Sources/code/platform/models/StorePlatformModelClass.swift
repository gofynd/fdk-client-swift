

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var companyId: Int

        public var address1: String

        public var storeEmail: String

        public var vatNo: String?

        public var isActive: Bool?

        public var alohomoraUserId: Int?

        public var fulfillmentChannel: String

        public var code: String?

        public var sId: String

        public var storeActiveFrom: String?

        public var orderIntegrationId: String?

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var country: String

        public var storeAddressJson: StoreAddress?

        public var locationType: String

        public var city: String

        public var isEnabledForRecon: Bool?

        public var parentStoreId: Int?

        public var contactPerson: String

        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var address2: String?

        public var state: String

        public var longitude: Double

        public var createdAt: String

        public var name: String

        public var mallArea: String?

        public var pincode: String

        public var loginUsername: String

        public var isArchived: Bool?

        public var phone: Int

        public var mallName: String?

        public var packagingMaterialCount: Int?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case address1

            case storeEmail = "store_email"

            case vatNo = "vat_no"

            case isActive = "is_active"

            case alohomoraUserId = "alohomora_user_id"

            case fulfillmentChannel = "fulfillment_channel"

            case code

            case sId = "s_id"

            case storeActiveFrom = "store_active_from"

            case orderIntegrationId = "order_integration_id"

            case brandStoreTags = "brand_store_tags"

            case latitude

            case country

            case storeAddressJson = "store_address_json"

            case locationType = "location_type"

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case parentStoreId = "parent_store_id"

            case contactPerson = "contact_person"

            case brandId = "brand_id"

            case meta

            case address2

            case state

            case longitude

            case createdAt = "created_at"

            case name

            case mallArea = "mall_area"

            case pincode

            case loginUsername = "login_username"

            case isArchived = "is_archived"

            case phone

            case mallName = "mall_name"

            case packagingMaterialCount = "packaging_material_count"

            case updatedAt = "updated_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.address1 = address1

            self.storeEmail = storeEmail

            self.vatNo = vatNo

            self.isActive = isActive

            self.alohomoraUserId = alohomoraUserId

            self.fulfillmentChannel = fulfillmentChannel

            self.code = code

            self.sId = sId

            self.storeActiveFrom = storeActiveFrom

            self.orderIntegrationId = orderIntegrationId

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.country = country

            self.storeAddressJson = storeAddressJson

            self.locationType = locationType

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.parentStoreId = parentStoreId

            self.contactPerson = contactPerson

            self.brandId = brandId

            self.meta = meta

            self.address2 = address2

            self.state = state

            self.longitude = longitude

            self.createdAt = createdAt

            self.name = name

            self.mallArea = mallArea

            self.pincode = pincode

            self.loginUsername = loginUsername

            self.isArchived = isArchived

            self.phone = phone

            self.mallName = mallName

            self.packagingMaterialCount = packagingMaterialCount

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            address1 = try container.decode(String.self, forKey: .address1)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            city = try container.decode(String.self, forKey: .city)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(updatedAt, forKey: .updatedAt)
        }
    }
}
