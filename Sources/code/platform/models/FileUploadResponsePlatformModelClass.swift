

import Foundation
public extension PlatformClient {
    /*
         Model: FileUploadResponse
         Used By: Order
     */

    class FileUploadResponse: Codable {
        public var url: String?

        public var expiry: Int?

        public enum CodingKeys: String, CodingKey {
            case url

            case expiry
        }

        public init(expiry: Int? = nil, url: String? = nil) {
            self.url = url

            self.expiry = expiry
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiry = try container.decode(Int.self, forKey: .expiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(expiry, forKey: .expiry)
        }
    }
}
