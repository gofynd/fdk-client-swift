

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address1: String

        public var address2: String?

        public var code: String?

        public var packagingMaterialCount: Int?

        public var latitude: Double

        public var name: String

        public var brandStoreTags: [String]?

        public var mallName: String?

        public var pincode: String

        public var storeActiveFrom: String?

        public var sId: String

        public var parentStoreId: Int?

        public var phone: Int

        public var storeEmail: String

        public var longitude: Double

        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var locationType: String

        public var alohomoraUserId: Int?

        public var contactPerson: String

        public var state: String

        public var vatNo: String?

        public var updatedAt: String?

        public var mallArea: String?

        public var createdAt: String

        public var isEnabledForRecon: Bool?

        public var companyId: Int

        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var loginUsername: String

        public var fulfillmentChannel: String

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case address1

            case address2

            case code

            case packagingMaterialCount = "packaging_material_count"

            case latitude

            case name

            case brandStoreTags = "brand_store_tags"

            case mallName = "mall_name"

            case pincode

            case storeActiveFrom = "store_active_from"

            case sId = "s_id"

            case parentStoreId = "parent_store_id"

            case phone

            case storeEmail = "store_email"

            case longitude

            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case locationType = "location_type"

            case alohomoraUserId = "alohomora_user_id"

            case contactPerson = "contact_person"

            case state

            case vatNo = "vat_no"

            case updatedAt = "updated_at"

            case mallArea = "mall_area"

            case createdAt = "created_at"

            case isEnabledForRecon = "is_enabled_for_recon"

            case companyId = "company_id"

            case brandId = "brand_id"

            case meta

            case loginUsername = "login_username"

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case storeAddressJson = "store_address_json"

            case country

            case isArchived = "is_archived"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address1 = address1

            self.address2 = address2

            self.code = code

            self.packagingMaterialCount = packagingMaterialCount

            self.latitude = latitude

            self.name = name

            self.brandStoreTags = brandStoreTags

            self.mallName = mallName

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.sId = sId

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.storeEmail = storeEmail

            self.longitude = longitude

            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.locationType = locationType

            self.alohomoraUserId = alohomoraUserId

            self.contactPerson = contactPerson

            self.state = state

            self.vatNo = vatNo

            self.updatedAt = updatedAt

            self.mallArea = mallArea

            self.createdAt = createdAt

            self.isEnabledForRecon = isEnabledForRecon

            self.companyId = companyId

            self.brandId = brandId

            self.meta = meta

            self.loginUsername = loginUsername

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            longitude = try container.decode(Double.self, forKey: .longitude)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }
}
