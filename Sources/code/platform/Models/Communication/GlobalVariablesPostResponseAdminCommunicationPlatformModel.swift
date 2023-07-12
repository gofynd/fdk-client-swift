

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: GlobalVariablesPostResponseAdmin
         Used By: Communication
     */

    class GlobalVariablesPostResponseAdmin: Codable {
        public var id: String?

        public var category: String?

        public var globalVariables: [String: Any]?

        public var createdAt: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case category

            case globalVariables = "global_variables"

            case createdAt = "created_at"
        }

        public init(category: String? = nil, createdAt: [String: Any]? = nil, globalVariables: [String: Any]? = nil, id: String? = nil) {
            self.id = id

            self.category = category

            self.globalVariables = globalVariables

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                globalVariables = try container.decode([String: Any].self, forKey: .globalVariables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode([String: Any].self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(globalVariables, forKey: .globalVariables)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: GlobalVariablesPostResponseAdmin
         Used By: Communication
     */

    class GlobalVariablesPostResponseAdmin: Codable {
        public var id: String?

        public var category: String?

        public var globalVariables: [String: Any]?

        public var createdAt: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case category

            case globalVariables = "global_variables"

            case createdAt = "created_at"
        }

        public init(category: String? = nil, createdAt: [String: Any]? = nil, globalVariables: [String: Any]? = nil, id: String? = nil) {
            self.id = id

            self.category = category

            self.globalVariables = globalVariables

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                globalVariables = try container.decode([String: Any].self, forKey: .globalVariables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode([String: Any].self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(globalVariables, forKey: .globalVariables)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
