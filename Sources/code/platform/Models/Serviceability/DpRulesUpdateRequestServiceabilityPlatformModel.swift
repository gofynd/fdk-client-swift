

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var conditions: [[String: Any]]

        public var name: String

        public var dpIds: [String: Any]

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case conditions

            case name

            case dpIds = "dp_ids"

            case isActive = "is_active"
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.conditions = conditions

            self.name = name

            self.dpIds = dpIds

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            name = try container.decode(String.self, forKey: .name)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var conditions: [[String: Any]]

        public var name: String

        public var dpIds: [String: Any]

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case conditions

            case name

            case dpIds = "dp_ids"

            case isActive = "is_active"
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.conditions = conditions

            self.name = name

            self.dpIds = dpIds

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            name = try container.decode(String.self, forKey: .name)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
