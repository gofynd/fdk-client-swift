

import Foundation
public extension PlatformClient {
    /*
         Model: Store1
         Used By: Order
     */

    class Store1: Codable {
        public var address2: String?

        public var meta: StoreMeta

        public var locationType: String

        public var pincode: String

        public var phone: Int

        public var vatNo: String?

        public var country: String

        public var sId: String

        public var companyId: Int

        public var storeActiveFrom: String?

        public var storeAddressJson: StoreAddress?

        public var brandId: [String: Any]?

        public var state: String

        public var code: String?

        public var packagingMaterialCount: Int?

        public var address1: String

        public var isArchived: Bool?

        public var name: String

        public var createdAt: String

        public var fulfillmentChannel: String

        public var alohomoraUserId: Int?

        public var latitude: Double

        public var parentStoreId: Int?

        public var storeEmail: String

        public var city: String

        public var longitude: Double

        public var isActive: Bool?

        public var updatedAt: String?

        public var loginUsername: String

        public var contactPerson: String

        public var brandStoreTags: [String]?

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var mallName: String?

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case address2

            case meta

            case locationType = "location_type"

            case pincode

            case phone

            case vatNo = "vat_no"

            case country

            case sId = "s_id"

            case companyId = "company_id"

            case storeActiveFrom = "store_active_from"

            case storeAddressJson = "store_address_json"

            case brandId = "brand_id"

            case state

            case code

            case packagingMaterialCount = "packaging_material_count"

            case address1

            case isArchived = "is_archived"

            case name

            case createdAt = "created_at"

            case fulfillmentChannel = "fulfillment_channel"

            case alohomoraUserId = "alohomora_user_id"

            case latitude

            case parentStoreId = "parent_store_id"

            case storeEmail = "store_email"

            case city

            case longitude

            case isActive = "is_active"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"

            case contactPerson = "contact_person"

            case brandStoreTags = "brand_store_tags"

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case mallName = "mall_name"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address2 = address2

            self.meta = meta

            self.locationType = locationType

            self.pincode = pincode

            self.phone = phone

            self.vatNo = vatNo

            self.country = country

            self.sId = sId

            self.companyId = companyId

            self.storeActiveFrom = storeActiveFrom

            self.storeAddressJson = storeAddressJson

            self.brandId = brandId

            self.state = state

            self.code = code

            self.packagingMaterialCount = packagingMaterialCount

            self.address1 = address1

            self.isArchived = isArchived

            self.name = name

            self.createdAt = createdAt

            self.fulfillmentChannel = fulfillmentChannel

            self.alohomoraUserId = alohomoraUserId

            self.latitude = latitude

            self.parentStoreId = parentStoreId

            self.storeEmail = storeEmail

            self.city = city

            self.longitude = longitude

            self.isActive = isActive

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername

            self.contactPerson = contactPerson

            self.brandStoreTags = brandStoreTags

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.mallName = mallName

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            locationType = try container.decode(String.self, forKey: .locationType)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(mallArea, forKey: .mallArea)
        }
    }
}
