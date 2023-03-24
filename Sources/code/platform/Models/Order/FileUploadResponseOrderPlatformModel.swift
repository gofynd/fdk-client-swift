

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FileUploadResponse
         Used By: Order
     */

    class FileUploadResponse: Codable {
        public var expiry: Int?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case expiry

            case url
        }

        public init(expiry: Int? = nil, url: String? = nil) {
            self.expiry = expiry

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expiry = try container.decode(Int.self, forKey: .expiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FileUploadResponse
         Used By: Order
     */

    class FileUploadResponse: Codable {
        public var expiry: Int?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case expiry

            case url
        }

        public init(expiry: Int? = nil, url: String? = nil) {
            self.expiry = expiry

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expiry = try container.decode(Int.self, forKey: .expiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
