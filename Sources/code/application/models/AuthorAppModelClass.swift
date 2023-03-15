

import Foundation
public extension ApplicationClient {
    /*
         Model: Author
         Used By: Content
     */
    class Author: Codable {
        public var designation: String?

        public var id: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case designation

            case id

            case name
        }

        public init(designation: String? = nil, id: String? = nil, name: String? = nil) {
            self.designation = designation

            self.id = id

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                designation = try container.decode(String.self, forKey: .designation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(designation, forKey: .designation)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
