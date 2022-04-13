import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: MetaSchema
         Used By: User
     */

    class MetaSchema: Codable {
        public var fyndDefault: Bool?

        public enum CodingKeys: String, CodingKey {
            case fyndDefault = "fynd_default"
        }

        public init(fyndDefault: Bool?) {
            self.fyndDefault = fyndDefault
        }

        public func duplicate() -> MetaSchema {
            let dict = self.dictionary!
            let copy = MetaSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndDefault = try container.decode(Bool.self, forKey: .fyndDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndDefault, forKey: .fyndDefault)
        }
    }
}
