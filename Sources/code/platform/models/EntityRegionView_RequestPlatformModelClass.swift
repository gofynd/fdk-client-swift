import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionView_Request
         Used By: Serviceability
     */

    class EntityRegionView_Request: Codable {
        public var subType: [String]

        public var parentId: [String]?

        public enum CodingKeys: String, CodingKey {
            case subType = "sub_type"

            case parentId = "parent_id"
        }

        public init(parentId: [String]?, subType: [String]) {
            self.subType = subType

            self.parentId = parentId
        }

        public func duplicate() -> EntityRegionView_Request {
            let dict = self.dictionary!
            let copy = EntityRegionView_Request(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subType = try container.decode([String].self, forKey: .subType)

            do {
                parentId = try container.decode([String].self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(parentId, forKey: .parentId)
        }
    }
}
