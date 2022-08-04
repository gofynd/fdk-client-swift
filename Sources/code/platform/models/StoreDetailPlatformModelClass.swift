

import Foundation
public extension PlatformClient {
    /*
         Model: StoreDetail
         Used By: Catalog
     */

    class StoreDetail: Codable {
        public var documents: [[String: Any]]?

        public var timing: [String: Any]?

        public var additionalContacts: [[String: Any]]?

        public var storeType: String?

        public var companyId: Int?

        public var storeCode: String?

        public var modifiedOn: String?

        public var name: String?

        public var displayName: String?

        public var uid: Int?

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case documents

            case timing

            case additionalContacts = "additional_contacts"

            case storeType = "store_type"

            case companyId = "company_id"

            case storeCode = "store_code"

            case modifiedOn = "modified_on"

            case name

            case displayName = "display_name"

            case uid

            case createdOn = "created_on"
        }

        public init(additionalContacts: [[String: Any]]? = nil, companyId: Int? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [[String: Any]]? = nil, modifiedOn: String? = nil, name: String? = nil, storeCode: String? = nil, storeType: String? = nil, timing: [String: Any]? = nil, uid: Int? = nil) {
            self.documents = documents

            self.timing = timing

            self.additionalContacts = additionalContacts

            self.storeType = storeType

            self.companyId = companyId

            self.storeCode = storeCode

            self.modifiedOn = modifiedOn

            self.name = name

            self.displayName = displayName

            self.uid = uid

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                documents = try container.decode([[String: Any]].self, forKey: .documents)

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
                storeCode = try container.decode(String.self, forKey: .storeCode)

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
                name = try container.decode(String.self, forKey: .name)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
