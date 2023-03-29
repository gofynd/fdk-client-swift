

import Foundation
public extension PlatformClient {
    /*
         Model: OAuthConfig
         Used By: Inventory
     */

    class OAuthConfig: Codable {
        public var limit: Int?

        public var pages: Int?

        public var interval: Int?

        public var consumerKey: String?

        public var consumerSecret: String?

        public var token: String?

        public var tokenSecret: String?

        public var restUrl: String?

        public var restBaseUrl: String?

        public var functionName: String?

        public enum CodingKeys: String, CodingKey {
            case limit

            case pages

            case interval

            case consumerKey = "consumer_key"

            case consumerSecret = "consumer_secret"

            case token

            case tokenSecret = "token_secret"

            case restUrl = "rest_url"

            case restBaseUrl = "rest_base_url"

            case functionName = "function_name"
        }

        public init(consumerKey: String? = nil, consumerSecret: String? = nil, functionName: String? = nil, interval: Int? = nil, limit: Int? = nil, pages: Int? = nil, restBaseUrl: String? = nil, restUrl: String? = nil, token: String? = nil, tokenSecret: String? = nil) {
            self.limit = limit

            self.pages = pages

            self.interval = interval

            self.consumerKey = consumerKey

            self.consumerSecret = consumerSecret

            self.token = token

            self.tokenSecret = tokenSecret

            self.restUrl = restUrl

            self.restBaseUrl = restBaseUrl

            self.functionName = functionName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                limit = try container.decode(Int.self, forKey: .limit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pages = try container.decode(Int.self, forKey: .pages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                interval = try container.decode(Int.self, forKey: .interval)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                consumerKey = try container.decode(String.self, forKey: .consumerKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                consumerSecret = try container.decode(String.self, forKey: .consumerSecret)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tokenSecret = try container.decode(String.self, forKey: .tokenSecret)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restUrl = try container.decode(String.self, forKey: .restUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restBaseUrl = try container.decode(String.self, forKey: .restBaseUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                functionName = try container.decode(String.self, forKey: .functionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(pages, forKey: .pages)

            try? container.encodeIfPresent(interval, forKey: .interval)

            try? container.encodeIfPresent(consumerKey, forKey: .consumerKey)

            try? container.encodeIfPresent(consumerSecret, forKey: .consumerSecret)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(tokenSecret, forKey: .tokenSecret)

            try? container.encodeIfPresent(restUrl, forKey: .restUrl)

            try? container.encodeIfPresent(restBaseUrl, forKey: .restBaseUrl)

            try? container.encodeIfPresent(functionName, forKey: .functionName)
        }
    }
}
