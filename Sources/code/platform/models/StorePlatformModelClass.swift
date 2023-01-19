

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var city: String

        public var longitude: Double

        public var address1: String

        public var isArchived: Bool?

        public var parentStoreId: Int?

        public var pincode: String

        public var companyId: Int

        public var createdAt: String

        public var orderIntegrationId: String?

        public var sId: String

        public var meta: StoreMeta

        public var country: String

        public var latitude: Double

        public var isActive: Bool?

        public var loginUsername: String

        public var locationType: String

        public var name: String

        public var phone: Int

        public var address2: String?

        public var isEnabledForRecon: Bool?

        public var state: String

        public var storeActiveFrom: String?

        public var fulfillmentChannel: String

        public var storeAddressJson: StoreAddress?

        public var vatNo: String?

        public var mallName: String?

        public var code: String?

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var contactPerson: String

        public var packagingMaterialCount: Int?

        public var storeEmail: String

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case longitude

            case address1

            case isArchived = "is_archived"

            case parentStoreId = "parent_store_id"

            case pincode

            case companyId = "company_id"

            case createdAt = "created_at"

            case orderIntegrationId = "order_integration_id"

            case sId = "s_id"

            case meta

            case country

            case latitude

            case isActive = "is_active"

            case loginUsername = "login_username"

            case locationType = "location_type"

            case name

            case phone

            case address2

            case isEnabledForRecon = "is_enabled_for_recon"

            case state

            case storeActiveFrom = "store_active_from"

            case fulfillmentChannel = "fulfillment_channel"

            case storeAddressJson = "store_address_json"

            case vatNo = "vat_no"

            case mallName = "mall_name"

            case code

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case contactPerson = "contact_person"

            case packagingMaterialCount = "packaging_material_count"

            case storeEmail = "store_email"

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.city = city

            self.longitude = longitude

            self.address1 = address1

            self.isArchived = isArchived

            self.parentStoreId = parentStoreId

            self.pincode = pincode

            self.companyId = companyId

            self.createdAt = createdAt

            self.orderIntegrationId = orderIntegrationId

            self.sId = sId

            self.meta = meta

            self.country = country

            self.latitude = latitude

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.locationType = locationType

            self.name = name

            self.phone = phone

            self.address2 = address2

            self.isEnabledForRecon = isEnabledForRecon

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.fulfillmentChannel = fulfillmentChannel

            self.storeAddressJson = storeAddressJson

            self.vatNo = vatNo

            self.mallName = mallName

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.contactPerson = contactPerson

            self.packagingMaterialCount = packagingMaterialCount

            self.storeEmail = storeEmail

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            locationType = try container.decode(String.self, forKey: .locationType)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(Int.self, forKey: .phone)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                code = try container.decode(String.self, forKey: .code)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallArea, forKey: .mallArea)
        }
    }
}
