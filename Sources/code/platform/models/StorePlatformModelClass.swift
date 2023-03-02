

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isEnabledForRecon: Bool?

        public var address1: String

        public var companyId: Int

        public var longitude: Double

        public var storeActiveFrom: String?

        public var country: String

        public var createdAt: String

        public var fulfillmentChannel: String

        public var updatedAt: String?

        public var address2: String?

        public var storeEmail: String

        public var isArchived: Bool?

        public var brandStoreTags: [String]?

        public var phone: Int

        public var contactPerson: String

        public var mallName: String?

        public var locationType: String

        public var city: String

        public var pincode: String

        public var parentStoreId: Int?

        public var storeAddressJson: StoreAddress?

        public var meta: StoreMeta

        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var code: String?

        public var sId: String

        public var packagingMaterialCount: Int?

        public var latitude: Double

        public var state: String

        public var brandId: [String: Any]?

        public var loginUsername: String

        public var alohomoraUserId: Int?

        public var vatNo: String?

        public var name: String

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case isEnabledForRecon = "is_enabled_for_recon"

            case address1

            case companyId = "company_id"

            case longitude

            case storeActiveFrom = "store_active_from"

            case country

            case createdAt = "created_at"

            case fulfillmentChannel = "fulfillment_channel"

            case updatedAt = "updated_at"

            case address2

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case brandStoreTags = "brand_store_tags"

            case phone

            case contactPerson = "contact_person"

            case mallName = "mall_name"

            case locationType = "location_type"

            case city

            case pincode

            case parentStoreId = "parent_store_id"

            case storeAddressJson = "store_address_json"

            case meta

            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case code

            case sId = "s_id"

            case packagingMaterialCount = "packaging_material_count"

            case latitude

            case state

            case brandId = "brand_id"

            case loginUsername = "login_username"

            case alohomoraUserId = "alohomora_user_id"

            case vatNo = "vat_no"

            case name

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isEnabledForRecon = isEnabledForRecon

            self.address1 = address1

            self.companyId = companyId

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.country = country

            self.createdAt = createdAt

            self.fulfillmentChannel = fulfillmentChannel

            self.updatedAt = updatedAt

            self.address2 = address2

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.brandStoreTags = brandStoreTags

            self.phone = phone

            self.contactPerson = contactPerson

            self.mallName = mallName

            self.locationType = locationType

            self.city = city

            self.pincode = pincode

            self.parentStoreId = parentStoreId

            self.storeAddressJson = storeAddressJson

            self.meta = meta

            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.code = code

            self.sId = sId

            self.packagingMaterialCount = packagingMaterialCount

            self.latitude = latitude

            self.state = state

            self.brandId = brandId

            self.loginUsername = loginUsername

            self.alohomoraUserId = alohomoraUserId

            self.vatNo = vatNo

            self.name = name

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            phone = try container.decode(Int.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallArea, forKey: .mallArea)
        }
    }
}
