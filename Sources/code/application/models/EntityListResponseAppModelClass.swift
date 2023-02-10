

import Foundation
public extension ApplicationClient {
    /*
         Model: EntityListResponse
         Used By: Logistic
     */
    class EntityListResponse: Codable {
        public var count: Int

        public var results: [PincodeEntityResponse]?

        public enum CodingKeys: String, CodingKey {
            case count

            case results
        }

        public init(count: Int, results: [PincodeEntityResponse]? = nil) {
            self.count = count

            self.results = results
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            count = try container.decode(Int.self, forKey: .count)

            do {
                results = try container.decode([PincodeEntityResponse].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }
}
