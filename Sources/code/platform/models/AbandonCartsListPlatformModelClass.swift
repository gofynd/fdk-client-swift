

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonCartsList
         Used By: Analytics
     */

    class AbandonCartsList: Codable {
        public var items: [AbandonCartsDetail]?

        public var cartTotal: String?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case cartTotal = "cart_total"

            case page
        }

        public init(cartTotal: String? = nil, items: [AbandonCartsDetail]? = nil, page: Page? = nil) {
            self.items = items

            self.cartTotal = cartTotal

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AbandonCartsDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartTotal = try container.decode(String.self, forKey: .cartTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
