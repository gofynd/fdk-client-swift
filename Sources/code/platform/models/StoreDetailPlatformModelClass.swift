

import Foundation
public extension PlatformClient {
    /*
         Model: StoreDetail
         Used By: Catalog
     */

    class StoreDetail: Codable {
        public var displayName: String?

        public var createdOn: String?

        public var storeType: String?

        public var companyId: Int?

        public var documents: [[String: Any]]?

        public var modifiedOn: String?

        public var storeCode: String?

        public var timing: [String: Any]?

        public var additionalContacts: [[String: Any]]?

        public var address: [String: Any]?

        public var name: String?

        public var uid: Int?

        public var manager: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case createdOn = "created_on"

            case storeType = "store_type"

            case companyId = "company_id"

            case documents

            case modifiedOn = "modified_on"

            case storeCode = "store_code"

            case timing

            case additionalContacts = "additional_contacts"

            case address

            case name

            case uid

            case manager
        }

        public init(additionalContacts: [[String: Any]]? = nil, address: [String: Any]? = nil, companyId: Int? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [[String: Any]]? = nil, manager: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, storeCode: String? = nil, storeType: String? = nil, timing: [String: Any]? = nil, uid: Int? = nil) {
            self.displayName = displayName

            self.createdOn = createdOn

            self.storeType = storeType

            self.companyId = companyId

            self.documents = documents

            self.modifiedOn = modifiedOn

            self.storeCode = storeCode

            self.timing = timing

            self.additionalContacts = additionalContacts

            self.address = address

            self.name = name

            self.uid = uid

            self.manager = manager
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([[String: Any]].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([String: Any].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                additionalContacts = try container.decode([[String: Any]].self, forKey: .additionalContacts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode([String: Any].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode([String: Any].self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manager, forKey: .manager)
        }
    }
}
