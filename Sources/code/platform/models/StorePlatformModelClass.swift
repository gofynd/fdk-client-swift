

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var country: String

        public var name: String

        public var address1: String

        public var locationType: String

        public var state: String

        public var pincode: String

        public var storeActiveFrom: String?

        public var isArchived: Bool?

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var latitude: Double

        public var createdAt: String

        public var fulfillmentChannel: String

        public var isEnabledForRecon: Bool?

        public var alohomoraUserId: Int?

        public var city: String

        public var mallName: String?

        public var longitude: Double

        public var parentStoreId: Int?

        public var companyId: Int

        public var contactPerson: String

        public var storeEmail: String

        public var meta: StoreMeta

        public var phone: Int

        public var brandStoreTags: [String]?

        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var loginUsername: String

        public var code: String?

        public var mallArea: String?

        public var updatedAt: String?

        public var packagingMaterialCount: Int?

        public var address2: String?

        public var vatNo: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case name

            case address1

            case locationType = "location_type"

            case state

            case pincode

            case storeActiveFrom = "store_active_from"

            case isArchived = "is_archived"

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case latitude

            case createdAt = "created_at"

            case fulfillmentChannel = "fulfillment_channel"

            case isEnabledForRecon = "is_enabled_for_recon"

            case alohomoraUserId = "alohomora_user_id"

            case city

            case mallName = "mall_name"

            case longitude

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case contactPerson = "contact_person"

            case storeEmail = "store_email"

            case meta

            case phone

            case brandStoreTags = "brand_store_tags"

            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case loginUsername = "login_username"

            case code

            case mallArea = "mall_area"

            case updatedAt = "updated_at"

            case packagingMaterialCount = "packaging_material_count"

            case address2

            case vatNo = "vat_no"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.country = country

            self.name = name

            self.address1 = address1

            self.locationType = locationType

            self.state = state

            self.pincode = pincode

            self.storeActiveFrom = storeActiveFrom

            self.isArchived = isArchived

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.latitude = latitude

            self.createdAt = createdAt

            self.fulfillmentChannel = fulfillmentChannel

            self.isEnabledForRecon = isEnabledForRecon

            self.alohomoraUserId = alohomoraUserId

            self.city = city

            self.mallName = mallName

            self.longitude = longitude

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.contactPerson = contactPerson

            self.storeEmail = storeEmail

            self.meta = meta

            self.phone = phone

            self.brandStoreTags = brandStoreTags

            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.loginUsername = loginUsername

            self.code = code

            self.mallArea = mallArea

            self.updatedAt = updatedAt

            self.packagingMaterialCount = packagingMaterialCount

            self.address2 = address2

            self.vatNo = vatNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(vatNo, forKey: .vatNo)
        }
    }
}
