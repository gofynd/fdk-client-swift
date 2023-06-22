

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var isActive: Bool

        public var dpIds: [String: Any]

        public var name: String

        public var conditions: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case dpIds = "dp_ids"

            case name

            case conditions
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.isActive = isActive

            self.dpIds = dpIds

            self.name = name

            self.conditions = conditions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

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
        public var isActive: Bool

        public var dpIds: [String: Any]

        public var name: String

        public var conditions: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case dpIds = "dp_ids"

            case name

            case conditions
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.isActive = isActive

            self.dpIds = dpIds

            self.name = name

            self.conditions = conditions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            name = try container.decode(String.self, forKey: .name)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(conditions, forKey: .conditions)
        }
    }
}
