

import Foundation
public extension PlatformClient {
    /*
         Model: EmailProviderReq
         Used By: Communication
     */

    class EmailProviderReq: Codable {
        public var name: String?

        public var description: String?

        public var apiKey: String?

        public var type: String?

        public var provider: String?

        public var from: [EmailProviderReqFrom]?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case apiKey = "api_key"

            case type

            case provider

            case from
        }

        public init(apiKey: String? = nil, description: String? = nil, from: [EmailProviderReqFrom]? = nil, name: String? = nil, provider: String? = nil, type: String? = nil) {
            self.name = name

            self.description = description

            self.apiKey = apiKey

            self.type = type

            self.provider = provider

            self.from = from
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                from = try container.decode([EmailProviderReqFrom].self, forKey: .from)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(provider, forKey: .provider)

            try? container.encodeIfPresent(from, forKey: .from)
        }
    }
}
