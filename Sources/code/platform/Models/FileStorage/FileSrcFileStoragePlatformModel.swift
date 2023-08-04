

import Foundation

public extension PlatformClient.FileStorage {
    /*
         Model: FileSrc
         Used By: FileStorage
     */

    class FileSrc: Codable {
        public var method: String?

        public var url: String

        public var namespace: String?

        public enum CodingKeys: String, CodingKey {
            case method

            case url

            case namespace
        }

        public init(method: String? = nil, namespace: String? = nil, url: String) {
            self.method = method

            self.url = url

            self.namespace = namespace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                method = try container.decode(String.self, forKey: .method)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                namespace = try container.decode(String.self, forKey: .namespace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(namespace, forKey: .namespace)
        }
    }
}

public extension PlatformClient.ApplicationClient.FileStorage {
    /*
         Model: FileSrc
         Used By: FileStorage
     */

    class FileSrc: Codable {
        public var method: String?

        public var url: String

        public var namespace: String?

        public enum CodingKeys: String, CodingKey {
            case method

            case url

            case namespace
        }

        public init(method: String? = nil, namespace: String? = nil, url: String) {
            self.method = method

            self.url = url

            self.namespace = namespace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                method = try container.decode(String.self, forKey: .method)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                namespace = try container.decode(String.self, forKey: .namespace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(namespace, forKey: .namespace)
        }
    }
}
