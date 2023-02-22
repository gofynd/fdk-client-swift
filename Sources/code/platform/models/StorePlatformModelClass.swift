

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isEnabledForRecon: Bool?

        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var state: String

        public var phone: Int

        public var address1: String

        public var isArchived: Bool?

        public var address2: String?

        public var locationType: String

        public var alohomoraUserId: Int?

        public var mallName: String?

        public var meta: StoreMeta

        public var latitude: Double

        public var storeAddressJson: StoreAddress?

        public var pincode: String

        public var companyId: Int

        public var brandStoreTags: [String]?

        public var storeEmail: String

        public var parentStoreId: Int?

        public var storeActiveFrom: String?

        public var city: String

        public var loginUsername: String

        public var name: String

        public var vatNo: String?

        public var createdAt: String

        public var code: String?

        public var updatedAt: String?

        public var packagingMaterialCount: Int?

        public var country: String

        public var sId: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var mallArea: String?

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case isEnabledForRecon = "is_enabled_for_recon"

            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case state

            case phone

            case address1

            case isArchived = "is_archived"

            case address2

            case locationType = "location_type"

            case alohomoraUserId = "alohomora_user_id"

            case mallName = "mall_name"

            case meta

            case latitude

            case storeAddressJson = "store_address_json"

            case pincode

            case companyId = "company_id"

            case brandStoreTags = "brand_store_tags"

            case storeEmail = "store_email"

            case parentStoreId = "parent_store_id"

            case storeActiveFrom = "store_active_from"

            case city

            case loginUsername = "login_username"

            case name

            case vatNo = "vat_no"

            case createdAt = "created_at"

            case code

            case updatedAt = "updated_at"

            case packagingMaterialCount = "packaging_material_count"

            case country

            case sId = "s_id"

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case mallArea = "mall_area"

            case longitude
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isEnabledForRecon = isEnabledForRecon

            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.state = state

            self.phone = phone

            self.address1 = address1

            self.isArchived = isArchived

            self.address2 = address2

            self.locationType = locationType

            self.alohomoraUserId = alohomoraUserId

            self.mallName = mallName

            self.meta = meta

            self.latitude = latitude

            self.storeAddressJson = storeAddressJson

            self.pincode = pincode

            self.companyId = companyId

            self.brandStoreTags = brandStoreTags

            self.storeEmail = storeEmail

            self.parentStoreId = parentStoreId

            self.storeActiveFrom = storeActiveFrom

            self.city = city

            self.loginUsername = loginUsername

            self.name = name

            self.vatNo = vatNo

            self.createdAt = createdAt

            self.code = code

            self.updatedAt = updatedAt

            self.packagingMaterialCount = packagingMaterialCount

            self.country = country

            self.sId = sId

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.mallArea = mallArea

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

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
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}
