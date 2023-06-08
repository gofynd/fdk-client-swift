

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var identifier: String?

        public var dpIds: [String: Any]

        public var name: String

        public var isActive: Bool

        public var conditions: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case dpIds = "dp_ids"

            case name

            case isActive = "is_active"

            case conditions
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], identifier: String? = nil, isActive: Bool, name: String) {
            self.identifier = identifier

            self.dpIds = dpIds

            self.name = name

            self.isActive = isActive

            self.conditions = conditions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var identifier: String?

        public var dpIds: [String: Any]

        public var name: String

        public var isActive: Bool

        public var conditions: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case dpIds = "dp_ids"

            case name

            case isActive = "is_active"

            case conditions
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], identifier: String? = nil, isActive: Bool, name: String) {
            self.identifier = identifier

            self.dpIds = dpIds

            self.name = name

            self.isActive = isActive

            self.conditions = conditions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)
        }
    }
}
