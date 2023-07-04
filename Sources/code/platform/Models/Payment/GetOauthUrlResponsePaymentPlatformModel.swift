

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: GetOauthUrlResponse
         Used By: Payment
     */

    class GetOauthUrlResponse: Codable {
        public var success: Bool

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case success

            case url
        }

        public init(success: Bool, url: String) {
            self.success = success

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: GetOauthUrlResponse
         Used By: Payment
     */

    class GetOauthUrlResponse: Codable {
        public var success: Bool

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case success

            case url
        }

        public init(success: Bool, url: String) {
            self.success = success

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
