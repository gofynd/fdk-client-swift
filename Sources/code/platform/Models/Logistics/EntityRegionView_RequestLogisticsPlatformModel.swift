

import Foundation

public extension PlatformClient.Logistics {
    /*
         Model: EntityRegionView_Request
         Used By: Logistics
     */

    class EntityRegionView_Request: Codable {
        public var parentId: [String]?

        public var subType: [String]

        public enum CodingKeys: String, CodingKey {
            case parentId = "parent_id"

            case subType = "sub_type"
        }

        public init(parentId: [String]? = nil, subType: [String]) {
            self.parentId = parentId

            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentId = try container.decode([String].self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subType = try container.decode([String].self, forKey: .subType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentId, forKey: .parentId)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistics {
    /*
         Model: EntityRegionView_Request
         Used By: Logistics
     */

    class EntityRegionView_Request: Codable {
        public var parentId: [String]?

        public var subType: [String]

        public enum CodingKeys: String, CodingKey {
            case parentId = "parent_id"

            case subType = "sub_type"
        }

        public init(parentId: [String]? = nil, subType: [String]) {
            self.parentId = parentId

            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentId = try container.decode([String].self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subType = try container.decode([String].self, forKey: .subType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentId, forKey: .parentId)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}
