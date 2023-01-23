

import Foundation
public extension PlatformClient {
    /*
         Model: LastPatch
         Used By: Configuration
     */

    class LastPatch: Codable {
        public var op: String?

        public var path: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case op

            case path

            case value
        }

        public init(op: String? = nil, path: String? = nil, value: String? = nil) {
            self.op = op

            self.path = path

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                op = try container.decode(String.self, forKey: .op)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                path = try container.decode(String.self, forKey: .path)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(op, forKey: .op)

            try? container.encodeIfPresent(path, forKey: .path)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
