

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: ArrayOfMarketplaceTheme
         Used By: Theme
     */

    class ArrayOfMarketplaceTheme: Codable {
        public var body: [MarketplaceTheme]?

        public enum CodingKeys: String, CodingKey {
            case body
        }

        public init(body: [MarketplaceTheme]? = nil) {
            self.body = body
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                body = try container.decode([MarketplaceTheme].self, forKey: .body)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(body, forKey: .body)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: ArrayOfMarketplaceTheme
         Used By: Theme
     */

    class ArrayOfMarketplaceTheme: Codable {
        public var body: [MarketplaceTheme]?

        public enum CodingKeys: String, CodingKey {
            case body
        }

        public init(body: [MarketplaceTheme]? = nil) {
            self.body = body
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                body = try container.decode([MarketplaceTheme].self, forKey: .body)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(body, forKey: .body)
        }
    }
}
