import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeMasterFilter
         Used By: Catalog
     */

    class AttributeMasterFilter: Codable {
        public var dependsOn: [String]?

        public var indexing: Bool

        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case dependsOn = "depends_on"

            case indexing

            case priority
        }

        public init(dependsOn: [String]? = nil, indexing: Bool, priority: Int? = nil) {
            self.dependsOn = dependsOn

            self.indexing = indexing

            self.priority = priority
        }

        public func duplicate() -> AttributeMasterFilter {
            let dict = self.dictionary!
            let copy = AttributeMasterFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dependsOn = try container.decode([String].self, forKey: .dependsOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            indexing = try container.decode(Bool.self, forKey: .indexing)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dependsOn, forKey: .dependsOn)

            try? container.encodeIfPresent(indexing, forKey: .indexing)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
