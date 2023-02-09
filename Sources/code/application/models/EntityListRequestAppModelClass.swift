

import Foundation
public extension ApplicationClient {
    /*
         Model: EntityListRequest
         Used By: Logistic
     */
    class EntityListRequest: Codable {
        public var filters: [SubtypeRequest]?

        public enum CodingKeys: String, CodingKey {
            case filters
        }

        public init(filters: [SubtypeRequest]? = nil) {
            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([SubtypeRequest].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
