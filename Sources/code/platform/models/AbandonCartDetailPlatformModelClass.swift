

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonCartDetail
         Used By: Analytics
     */

    class AbandonCartDetail: Codable {
        public var id: String?

        public var userId: String?

        public var cartValue: String?

        public var articles: [[String: Any]]?

        public var breakup: [String: Any]?

        public var address: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case userId = "user_id"

            case cartValue = "cart_value"

            case articles

            case breakup

            case address
        }

        public init(address: [String: Any]? = nil, articles: [[String: Any]]? = nil, breakup: [String: Any]? = nil, cartValue: String? = nil, userId: String? = nil, id: String? = nil) {
            self.id = id

            self.userId = userId

            self.cartValue = cartValue

            self.articles = articles

            self.breakup = breakup

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartValue = try container.decode(String.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakup = try container.decode([String: Any].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode([String: Any].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
