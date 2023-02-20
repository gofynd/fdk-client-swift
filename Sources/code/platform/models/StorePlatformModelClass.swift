

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isActive: Bool?

        public var meta: StoreMeta

        public var vatNo: String?

        public var storeEmail: String

        public var loginUsername: String

        public var storeAddressJson: StoreAddress?

        public var orderIntegrationId: String?

        public var address2: String?

        public var updatedAt: String?

        public var parentStoreId: Int?

        public var brandId: [String: Any]?

        public var storeActiveFrom: String?

        public var country: String

        public var createdAt: String

        public var alohomoraUserId: Int?

        public var name: String

        public var fulfillmentChannel: String

        public var phone: Int

        public var companyId: Int

        public var pincode: String

        public var packagingMaterialCount: Int?

        public var longitude: Double

        public var locationType: String

        public var address1: String

        public var latitude: Double

        public var code: String?

        public var isArchived: Bool?

        public var contactPerson: String

        public var isEnabledForRecon: Bool?

        public var sId: String

        public var brandStoreTags: [String]?

        public var state: String

        public var mallArea: String?

        public var city: String

        public var mallName: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case meta

            case vatNo = "vat_no"

            case storeEmail = "store_email"

            case loginUsername = "login_username"

            case storeAddressJson = "store_address_json"

            case orderIntegrationId = "order_integration_id"

            case address2

            case updatedAt = "updated_at"

            case parentStoreId = "parent_store_id"

            case brandId = "brand_id"

            case storeActiveFrom = "store_active_from"

            case country

            case createdAt = "created_at"

            case alohomoraUserId = "alohomora_user_id"

            case name

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case companyId = "company_id"

            case pincode

            case packagingMaterialCount = "packaging_material_count"

            case longitude

            case locationType = "location_type"

            case address1

            case latitude

            case code

            case isArchived = "is_archived"

            case contactPerson = "contact_person"

            case isEnabledForRecon = "is_enabled_for_recon"

            case sId = "s_id"

            case brandStoreTags = "brand_store_tags"

            case state

            case mallArea = "mall_area"

            case city

            case mallName = "mall_name"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isActive = isActive

            self.meta = meta

            self.vatNo = vatNo

            self.storeEmail = storeEmail

            self.loginUsername = loginUsername

            self.storeAddressJson = storeAddressJson

            self.orderIntegrationId = orderIntegrationId

            self.address2 = address2

            self.updatedAt = updatedAt

            self.parentStoreId = parentStoreId

            self.brandId = brandId

            self.storeActiveFrom = storeActiveFrom

            self.country = country

            self.createdAt = createdAt

            self.alohomoraUserId = alohomoraUserId

            self.name = name

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.companyId = companyId

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount

            self.longitude = longitude

            self.locationType = locationType

            self.address1 = address1

            self.latitude = latitude

            self.code = code

            self.isArchived = isArchived

            self.contactPerson = contactPerson

            self.isEnabledForRecon = isEnabledForRecon

            self.sId = sId

            self.brandStoreTags = brandStoreTags

            self.state = state

            self.mallArea = mallArea

            self.city = city

            self.mallName = mallName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                address2 = try container.decode(String.self, forKey: .address2)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(Int.self, forKey: .phone)

            companyId = try container.decode(Int.self, forKey: .companyId)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallName, forKey: .mallName)
        }
    }
}
