

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var conditions: [[String: Any]]

        public var name: String

        public var isActive: Bool

        public var dpIds: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case conditions

            case name

            case isActive = "is_active"

            case dpIds = "dp_ids"
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.conditions = conditions

            self.name = name

            self.isActive = isActive

            self.dpIds = dpIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
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

        public var isActive: Bool

        public var dpIds: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case conditions

            case name

            case isActive = "is_active"

            case dpIds = "dp_ids"
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.conditions = conditions

            self.name = name

            self.isActive = isActive

            self.dpIds = dpIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
        }
    }
}
