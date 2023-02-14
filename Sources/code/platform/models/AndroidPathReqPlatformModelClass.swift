

import Foundation
public extension PlatformClient {
    /*
         Model: AndroidPathReq
         Used By: Rewards
     */

    class AndroidPathReq: Codable {
        public var paths: [String]?

        public enum CodingKeys: String, CodingKey {
            case paths
        }

        public init(paths: [String]? = nil) {
            self.paths = paths
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paths = try container.decode([String].self, forKey: .paths)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paths, forKey: .paths)
        }
    }
}
