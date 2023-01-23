

import Foundation
public extension PlatformClient {
    /*
         Model: Destination
         Used By: FileStorage
     */

    class Destination: Codable {
        public var namespace: String

        public var rewrite: String

        public var basepath: String?

        public enum CodingKeys: String, CodingKey {
            case namespace

            case rewrite

            case basepath
        }

        public init(basepath: String? = nil, namespace: String, rewrite: String) {
            self.namespace = namespace

            self.rewrite = rewrite

            self.basepath = basepath
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            namespace = try container.decode(String.self, forKey: .namespace)

            rewrite = try container.decode(String.self, forKey: .rewrite)

            do {
                basepath = try container.decode(String.self, forKey: .basepath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(rewrite, forKey: .rewrite)

            try? container.encodeIfPresent(basepath, forKey: .basepath)
        }
    }
}
