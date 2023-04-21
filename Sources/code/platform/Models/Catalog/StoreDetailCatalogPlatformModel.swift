

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: StoreDetail
         Used By: Catalog
     */

    class StoreDetail: Codable {
        public var additionalContacts: [[String: Any]]?

        public var uid: Int?

        public var displayName: String?

        public var address: [String: Any]?

        public var createdOn: String?

        public var timing: [String: Any]?

        public var modifiedOn: String?

        public var storeCode: String?

        public var documents: [[String: Any]]?

        public var storeType: String?

        public var name: String?

        public var manager: [String: Any]?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case additionalContacts = "additional_contacts"

            case uid

            case displayName = "display_name"

            case address

            case createdOn = "created_on"

            case timing

            case modifiedOn = "modified_on"

            case storeCode = "store_code"

            case documents

            case storeType = "store_type"

            case name

            case manager

            case companyId = "company_id"
        }

        public init(additionalContacts: [[String: Any]]? = nil, address: [String: Any]? = nil, companyId: Int? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [[String: Any]]? = nil, manager: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, storeCode: String? = nil, storeType: String? = nil, timing: [String: Any]? = nil, uid: Int? = nil) {
            self.additionalContacts = additionalContacts

            self.uid = uid

            self.displayName = displayName

            self.address = address

            self.createdOn = createdOn

            self.timing = timing

            self.modifiedOn = modifiedOn

            self.storeCode = storeCode

            self.documents = documents

            self.storeType = storeType

            self.name = name

            self.manager = manager

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                additionalContacts = try container.decode([[String: Any]].self, forKey: .additionalContacts)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                documents = try container.decode([[String: Any]].self, forKey: .documents)

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
                name = try container.decode(String.self, forKey: .name)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: StoreDetail
         Used By: Catalog
     */

    class StoreDetail: Codable {
        public var additionalContacts: [[String: Any]]?

        public var uid: Int?

        public var displayName: String?

        public var address: [String: Any]?

        public var createdOn: String?

        public var timing: [String: Any]?

        public var modifiedOn: String?

        public var storeCode: String?

        public var documents: [[String: Any]]?

        public var storeType: String?

        public var name: String?

        public var manager: [String: Any]?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case additionalContacts = "additional_contacts"

            case uid

            case displayName = "display_name"

            case address

            case createdOn = "created_on"

            case timing

            case modifiedOn = "modified_on"

            case storeCode = "store_code"

            case documents

            case storeType = "store_type"

            case name

            case manager

            case companyId = "company_id"
        }

        public init(additionalContacts: [[String: Any]]? = nil, address: [String: Any]? = nil, companyId: Int? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [[String: Any]]? = nil, manager: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, storeCode: String? = nil, storeType: String? = nil, timing: [String: Any]? = nil, uid: Int? = nil) {
            self.additionalContacts = additionalContacts

            self.uid = uid

            self.displayName = displayName

            self.address = address

            self.createdOn = createdOn

            self.timing = timing

            self.modifiedOn = modifiedOn

            self.storeCode = storeCode

            self.documents = documents

            self.storeType = storeType

            self.name = name

            self.manager = manager

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                additionalContacts = try container.decode([[String: Any]].self, forKey: .additionalContacts)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                documents = try container.decode([[String: Any]].self, forKey: .documents)

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
                name = try container.decode(String.self, forKey: .name)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
