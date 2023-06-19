

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: MarketplaceThemeResponse
         Used By: Theme
     */

    class MarketplaceThemeResponse: Codable {
        public var status: Int?

        public var body: MarketplaceThemeResponseBody?

        public enum CodingKeys: String, CodingKey {
            case status

            case body
        }

        public init(body: MarketplaceThemeResponseBody? = nil, status: Int? = nil) {
            self.status = status

            self.body = body
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                body = try container.decode(MarketplaceThemeResponseBody.self, forKey: .body)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(body, forKey: .body)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: MarketplaceThemeResponse
         Used By: Theme
     */

    class MarketplaceThemeResponse: Codable {
        public var status: Int?

        public var body: MarketplaceThemeResponseBody?

        public enum CodingKeys: String, CodingKey {
            case status

            case body
        }

        public init(body: MarketplaceThemeResponseBody? = nil, status: Int? = nil) {
            self.status = status

            self.body = body
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                body = try container.decode(MarketplaceThemeResponseBody.self, forKey: .body)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(body, forKey: .body)
        }
    }
}
