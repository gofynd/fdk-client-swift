

import Foundation
public extension PlatformClient {
    /*
         Model: DefaultHeadersDTO
         Used By: Inventory
     */

    class DefaultHeadersDTO: Codable {
        public var store: PropBeanDTO?

        public var intfArticleId: PropBeanDTO?

        public var priceEffective: PropBeanDTO?

        public var quantity: PropBeanDTO?

        public enum CodingKeys: String, CodingKey {
            case store

            case intfArticleId = "intf_article_id"

            case priceEffective = "price_effective"

            case quantity
        }

        public init(intfArticleId: PropBeanDTO? = nil, priceEffective: PropBeanDTO? = nil, quantity: PropBeanDTO? = nil, store: PropBeanDTO? = nil) {
            self.store = store

            self.intfArticleId = intfArticleId

            self.priceEffective = priceEffective

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                store = try container.decode(PropBeanDTO.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intfArticleId = try container.decode(PropBeanDTO.self, forKey: .intfArticleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(PropBeanDTO.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(PropBeanDTO.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(intfArticleId, forKey: .intfArticleId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
