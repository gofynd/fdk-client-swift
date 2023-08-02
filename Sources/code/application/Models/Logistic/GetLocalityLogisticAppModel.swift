

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: GetLocality
         Used By: Logistic
     */
    class GetLocality: Codable {
        public var regions: Locality?

        public enum CodingKeys: String, CodingKey {
            case regions
        }

        public init(regions: Locality? = nil) {
            self.regions = regions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                regions = try container.decode(Locality.self, forKey: .regions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(regions, forKey: .regions)
        }
    }
}
