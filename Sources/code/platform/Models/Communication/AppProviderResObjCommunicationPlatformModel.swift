

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: AppProviderResObj
         Used By: Communication
     */

    class AppProviderResObj: Codable {
        public var provider: String?

        public enum CodingKeys: String, CodingKey {
            case provider
        }

        public init(provider: String? = nil) {
            self.provider = provider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(provider, forKey: .provider)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: AppProviderResObj
         Used By: Communication
     */

    class AppProviderResObj: Codable {
        public var provider: String?

        public enum CodingKeys: String, CodingKey {
            case provider
        }

        public init(provider: String? = nil) {
            self.provider = provider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(provider, forKey: .provider)
        }
    }
}
