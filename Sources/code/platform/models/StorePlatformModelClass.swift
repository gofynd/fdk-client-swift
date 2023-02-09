

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var isActive: Bool?

        public var orderIntegrationId: String?

        public var mallName: String?

        public var address2: String?

        public var createdAt: String

        public var storeEmail: String

        public var vatNo: String?

        public var isEnabledForRecon: Bool?

        public var city: String

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var country: String

        public var latitude: Double

        public var name: String

        public var parentStoreId: Int?

        public var state: String

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var fulfillmentChannel: String

        public var updatedAt: String?

        public var mallArea: String?

        public var address1: String

        public var code: String?

        public var companyId: Int

        public var phone: Int

        public var isArchived: Bool?

        public var contactPerson: String

        public var locationType: String

        public var sId: String

        public var loginUsername: String

        public var meta: StoreMeta

        public var longitude: Double

        public var storeActiveFrom: String?

        public var brandId: [String: Any]?

        public var brandStoreTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case orderIntegrationId = "order_integration_id"

            case mallName = "mall_name"

            case address2

            case createdAt = "created_at"

            case storeEmail = "store_email"

            case vatNo = "vat_no"

            case isEnabledForRecon = "is_enabled_for_recon"

            case city

            case pincode

            case storeAddressJson = "store_address_json"

            case country

            case latitude

            case name

            case parentStoreId = "parent_store_id"

            case state

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case fulfillmentChannel = "fulfillment_channel"

            case updatedAt = "updated_at"

            case mallArea = "mall_area"

            case address1

            case code

            case companyId = "company_id"

            case phone

            case isArchived = "is_archived"

            case contactPerson = "contact_person"

            case locationType = "location_type"

            case sId = "s_id"

            case loginUsername = "login_username"

            case meta

            case longitude

            case storeActiveFrom = "store_active_from"

            case brandId = "brand_id"

            case brandStoreTags = "brand_store_tags"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isActive = isActive

            self.orderIntegrationId = orderIntegrationId

            self.mallName = mallName

            self.address2 = address2

            self.createdAt = createdAt

            self.storeEmail = storeEmail

            self.vatNo = vatNo

            self.isEnabledForRecon = isEnabledForRecon

            self.city = city

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.country = country

            self.latitude = latitude

            self.name = name

            self.parentStoreId = parentStoreId

            self.state = state

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.fulfillmentChannel = fulfillmentChannel

            self.updatedAt = updatedAt

            self.mallArea = mallArea

            self.address1 = address1

            self.code = code

            self.companyId = companyId

            self.phone = phone

            self.isArchived = isArchived

            self.contactPerson = contactPerson

            self.locationType = locationType

            self.sId = sId

            self.loginUsername = loginUsername

            self.meta = meta

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.brandId = brandId

            self.brandStoreTags = brandStoreTags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                mallName = try container.decode(String.self, forKey: .mallName)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            locationType = try container.decode(String.self, forKey: .locationType)

            sId = try container.decode(String.self, forKey: .sId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
        }
    }
}
