

import Foundation
public extension ApplicationClient {
    /*
         Model: Sections
         Used By: Theme
     */
    class Sections: Codable {
        public var attributes: String?

        public enum CodingKeys: String, CodingKey {
            case attributes
        }

        public init(attributes: String? = nil) {
            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributes = try container.decode(String.self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}
