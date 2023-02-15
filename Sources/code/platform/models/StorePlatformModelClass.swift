

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address1: String

        public var pincode: String

        public var phone: Int

        public var country: String

        public var packagingMaterialCount: Int?

        public var isEnabledForRecon: Bool?

        public var mallName: String?

        public var storeActiveFrom: String?

        public var isArchived: Bool?

        public var storeEmail: String

        public var fulfillmentChannel: String

        public var latitude: Double

        public var name: String

        public var vatNo: String?

        public var isActive: Bool?

        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var alohomoraUserId: Int?

        public var locationType: String

        public var city: String

        public var longitude: Double

        public var parentStoreId: Int?

        public var contactPerson: String

        public var code: String?

        public var brandStoreTags: [String]?

        public var createdAt: String

        public var sId: String

        public var mallArea: String?

        public var orderIntegrationId: String?

        public var state: String

        public var storeAddressJson: StoreAddress?

        public var updatedAt: String?

        public var loginUsername: String

        public var companyId: Int

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case pincode

            case phone

            case country

            case packagingMaterialCount = "packaging_material_count"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallName = "mall_name"

            case storeActiveFrom = "store_active_from"

            case isArchived = "is_archived"

            case storeEmail = "store_email"

            case fulfillmentChannel = "fulfillment_channel"

            case latitude

            case name

            case vatNo = "vat_no"

            case isActive = "is_active"

            case brandId = "brand_id"

            case meta

            case alohomoraUserId = "alohomora_user_id"

            case locationType = "location_type"

            case city

            case longitude

            case parentStoreId = "parent_store_id"

            case contactPerson = "contact_person"

            case code

            case brandStoreTags = "brand_store_tags"

            case createdAt = "created_at"

            case sId = "s_id"

            case mallArea = "mall_area"

            case orderIntegrationId = "order_integration_id"

            case state

            case storeAddressJson = "store_address_json"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"

            case companyId = "company_id"

            case address2
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address1 = address1

            self.pincode = pincode

            self.phone = phone

            self.country = country

            self.packagingMaterialCount = packagingMaterialCount

            self.isEnabledForRecon = isEnabledForRecon

            self.mallName = mallName

            self.storeActiveFrom = storeActiveFrom

            self.isArchived = isArchived

            self.storeEmail = storeEmail

            self.fulfillmentChannel = fulfillmentChannel

            self.latitude = latitude

            self.name = name

            self.vatNo = vatNo

            self.isActive = isActive

            self.brandId = brandId

            self.meta = meta

            self.alohomoraUserId = alohomoraUserId

            self.locationType = locationType

            self.city = city

            self.longitude = longitude

            self.parentStoreId = parentStoreId

            self.contactPerson = contactPerson

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.createdAt = createdAt

            self.sId = sId

            self.mallArea = mallArea

            self.orderIntegrationId = orderIntegrationId

            self.state = state

            self.storeAddressJson = storeAddressJson

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername

            self.companyId = companyId

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(Int.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
