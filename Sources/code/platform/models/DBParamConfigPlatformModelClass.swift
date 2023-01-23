

import Foundation
public extension PlatformClient {
    /*
         Model: DBParamConfig
         Used By: Inventory
     */

    class DBParamConfig: Codable {
        public var params: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case params
        }

        public init(params: [String: Any]? = nil) {
            self.params = params
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(params, forKey: .params)
        }
    }
}
