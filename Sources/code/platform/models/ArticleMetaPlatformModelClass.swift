

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleMeta
         Used By: Order
     */

    class ArticleMeta: Codable {
        public var service: String?

        public enum CodingKeys: String, CodingKey {
            case service
        }

        public init(service: String? = nil) {
            self.service = service
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                service = try container.decode(String.self, forKey: .service)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(service, forKey: .service)
        }
    }
}
