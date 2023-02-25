

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var phone: Int

        public var brandStoreTags: [String]?

        public var pincode: String

        public var isArchived: Bool?

        public var locationType: String

        public var state: String

        public var contactPerson: String

        public var loginUsername: String

        public var storeAddressJson: StoreAddress?

        public var mallName: String?

        public var meta: StoreMeta

        public var longitude: Double

        public var city: String

        public var latitude: Double

        public var country: String

        public var alohomoraUserId: Int?

        public var isActive: Bool?

        public var name: String

        public var createdAt: String

        public var vatNo: String?

        public var address2: String?

        public var orderIntegrationId: String?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var parentStoreId: Int?

        public var code: String?

        public var fulfillmentChannel: String

        public var companyId: Int

        public var address1: String

        public var isEnabledForRecon: Bool?

        public var brandId: [String: Any]?

        public var packagingMaterialCount: Int?

        public var sId: String

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case brandStoreTags = "brand_store_tags"

            case pincode

            case isArchived = "is_archived"

            case locationType = "location_type"

            case state

            case contactPerson = "contact_person"

            case loginUsername = "login_username"

            case storeAddressJson = "store_address_json"

            case mallName = "mall_name"

            case meta

            case longitude

            case city

            case latitude

            case country

            case alohomoraUserId = "alohomora_user_id"

            case isActive = "is_active"

            case name

            case createdAt = "created_at"

            case vatNo = "vat_no"

            case address2

            case orderIntegrationId = "order_integration_id"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case parentStoreId = "parent_store_id"

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case address1

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandId = "brand_id"

            case packagingMaterialCount = "packaging_material_count"

            case sId = "s_id"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.phone = phone

            self.brandStoreTags = brandStoreTags

            self.pincode = pincode

            self.isArchived = isArchived

            self.locationType = locationType

            self.state = state

            self.contactPerson = contactPerson

            self.loginUsername = loginUsername

            self.storeAddressJson = storeAddressJson

            self.mallName = mallName

            self.meta = meta

            self.longitude = longitude

            self.city = city

            self.latitude = latitude

            self.country = country

            self.alohomoraUserId = alohomoraUserId

            self.isActive = isActive

            self.name = name

            self.createdAt = createdAt

            self.vatNo = vatNo

            self.address2 = address2

            self.orderIntegrationId = orderIntegrationId

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.parentStoreId = parentStoreId

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.address1 = address1

            self.isEnabledForRecon = isEnabledForRecon

            self.brandId = brandId

            self.packagingMaterialCount = packagingMaterialCount

            self.sId = sId

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(mallArea, forKey: .mallArea)
        }
    }
}
