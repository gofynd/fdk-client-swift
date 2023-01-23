

import Foundation
public extension ApplicationClient {
    /*
         Model: ReqConfiguration
         Used By: FileStorage
     */
    class ReqConfiguration: Codable {
        public var concurrency: Int?

        public enum CodingKeys: String, CodingKey {
            case concurrency
        }

        public init(concurrency: Int? = nil) {
            self.concurrency = concurrency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                concurrency = try container.decode(Int.self, forKey: .concurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(concurrency, forKey: .concurrency)
        }
    }
}
