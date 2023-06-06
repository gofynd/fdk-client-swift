

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BoostBury
         Used By: Catalog
     */

    class BoostBury: Codable {
        public var boost: [RerankingAttribute]?

        public enum CodingKeys: String, CodingKey {
            case boost
        }

        public init(boost: [RerankingAttribute]? = nil) {
            self.boost = boost
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boost = try container.decode([RerankingAttribute].self, forKey: .boost)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(boost, forKey: .boost)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BoostBury
         Used By: Catalog
     */

    class BoostBury: Codable {
        public var boost: [RerankingAttribute]?

        public enum CodingKeys: String, CodingKey {
            case boost
        }

        public init(boost: [RerankingAttribute]? = nil) {
            self.boost = boost
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boost = try container.decode([RerankingAttribute].self, forKey: .boost)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(boost, forKey: .boost)
        }
    }
}
